#define HOLD_CASINGS	0 //do not do anything after firing. Manual action, like pump shotguns, or guns that want to define custom behaviour
#define CLEAR_CASINGS	1 //clear chambered so that the next round will be automatically loaded and fired, but don't drop anything on the floor
#define EJECT_CASINGS	2 //drop spent casings on the ground after firing
#define CYCLE_CASINGS	3 //cycle casings, like a revolver. Also works for multibarrelled guns

/obj/item/weapon/gun/projectile
	name = "gun"
	desc = "A gun that fires bullets."
	icon_state = "revolver"
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	w_class = ITEM_SIZE_NORMAL
	matter = list(DEFAULT_WALL_MATERIAL = 1000)
	screen_shake = 1

	var/caliber = "357"		//determines which casings will fit
	var/handle_casings = EJECT_CASINGS	//determines how spent casings should be handled
	var/load_method = SINGLE_CASING|SPEEDLOADER //1 = Single shells, 2 = box or quick loader, 3 = magazine
	var/obj/item/ammo_casing/chambered = null
	var/ejection_dir = WEST //Well, technically "left". This is used to keep the direction the gun ejects from fairly consistent. For whatever reason, you will need to input a dir opposite to what you want.

	//For SINGLE_CASING or SPEEDLOADER guns
	var/max_shells = 0			//the number of casings that will fit inside
	var/ammo_type = null		//the type of ammo that the gun comes preloaded with
	var/list/loaded = list()	//stored ammo
	var/starts_loaded = 1		//whether the gun starts loaded or not, can be overridden for guns crafted in-game

	//For MAGAZINE guns
	var/magazine_type = null	//the type of magazine that the gun comes preloaded with
	var/obj/item/ammo_magazine/ammo_magazine = null //stored magazine
	var/allowed_magazines		//magazine types that may be loaded. Can be a list or single path
	var/auto_eject = 0			//if the magazine should automatically eject itself when empty.
	var/auto_eject_sound = null

	var/is_jammed = 0           //Whether this gun is jammed
	var/jam_chance = 2          //boooooooiiiiiii
	var/degradation_rate = 1
	var/ammocounter = 0
	//TODO generalize ammo icon states for guns
	//var/magazine_states = 0
	//var/list/icon_keys = list()		//keys
	//var/list/ammo_states = list()	//values

/obj/item/weapon/gun/projectile/New()
	..()
	if (starts_loaded)
		if(ispath(ammo_type) && (load_method & (SINGLE_CASING|SPEEDLOADER)))
			for(var/i in 1 to max_shells)
				loaded += new ammo_type(src)
		if(ispath(magazine_type) && (load_method & MAGAZINE))
			ammo_magazine = new magazine_type(src)
	update_icon()
	if(condition >= 1)
		condition = rand (80, 100) //phleg


/obj/item/weapon/gun/projectile/consume_next_projectile(mob/user)
//	if(!is_jammed && prob(jam_chance))
//		src.visible_message("<span class='danger'>\The [src] jams!</span>")
//		is_jammed = 1
	if(is_jammed)
		return null
	//get the next casing
	if(loaded.len)
		chambered = loaded[1] //load next casing.
		if(handle_casings != HOLD_CASINGS)
			loaded -= chambered
	else if(ammo_magazine && ammo_magazine.stored_ammo.len)
		chambered = ammo_magazine.stored_ammo[1]
		if(handle_casings != HOLD_CASINGS)
			ammo_magazine.stored_ammo -= chambered

	if (chambered)
		return chambered.BB
	return null

/obj/item/weapon/gun/projectile/handle_post_fire()
	..()
	if(chambered)
		chambered.expend()
		process_chambered()

/obj/item/weapon/gun/projectile/handle_click_empty()
	..()
	process_chambered()

/obj/item/weapon/gun/projectile/proc/process_chambered()
	if (!chambered) return

	switch(handle_casings)
		if(EJECT_CASINGS) //eject casing onto ground.
			var/turf/temp_loc = get_turf(src)
			for(var/obj/item/ammo_casing/temp_casing in temp_loc)
				if(temp_casing.desc == chambered.desc && !temp_casing.BB)
					var/temp_amount = temp_casing.amount + chambered.amount
					if(temp_amount > chambered.maxamount)
						temp_casing.amount -= (chambered.maxamount - chambered.amount)
						chambered.amount = chambered.maxamount
						temp_casing.update_icon()
					else
						chambered.amount = temp_amount
						QDEL_NULL(temp_casing)
					chambered.update_icon()
			chambered.loc = temp_loc
			if(LAZYLEN(chambered.casing_sound))
				playsound(loc, pick(chambered.casing_sound), 50, 1)
		if(CYCLE_CASINGS) //cycle the casing back to the end.
			if(ammo_magazine)
				ammo_magazine.stored_ammo += chambered
			else
				loaded += chambered

	if(handle_casings != HOLD_CASINGS)
		chambered = null


//Attempts to load A into src, depending on the type of thing being loaded and the load_method
//Maybe this should be broken up into separate procs for each load method?
/obj/item/weapon/gun/projectile/proc/load_ammo(var/obj/item/A, mob/user)
	if(istype(A, /obj/item/ammo_magazine))
		if(src != user.r_hand && src != user.l_hand && !(istype(src, /obj/item/weapon/gun/projectile/heavy_mg)))
			user << "<span class='warning'>[src] must be in your hand to do that.</span>"
			return
		var/obj/item/ammo_magazine/AM = A
		if(!(load_method & AM.mag_type) || caliber != AM.caliber)
			return //incompatible

		switch(AM.mag_type)
			if(MAGAZINE)
				if((ispath(allowed_magazines) && !istype(A, allowed_magazines)) || (islist(allowed_magazines) && !is_type_in_list(A, allowed_magazines)))
					to_chat(user, "<span class='warning'>\The [A] won't fit into [src].</span>")
					return
				if(ammo_magazine)
					to_chat(user, "<span class='warning'>[src] already has a magazine loaded.</span>")//already a magazine here

					return
				if(reload_sound) playsound(user, reload_sound, 100, 1)
				if(!do_after(user, (AM.load_delay), user))
					return 0
				user.remove_from_mob(AM)
				AM.loc = src
				ammo_magazine = AM
				user.visible_message("[user] inserts [AM] into [src].", "<span class='notice'>You insert [AM] into [src].</span>")
				cock_gun(user)
			if(SPEEDLOADER)
				if(loaded.len >= max_shells)
					to_chat(user, "<span class='warning'>[src] is full.</span>")//already a magazine here
					return
				var/count = 0
				if (do_after(user, (AM.reload_delay * (max_shells - loaded.len)), user))
					for(var/obj/item/ammo_casing/C in AM.stored_ammo)
						if(loaded.len >= max_shells)
							break
						if(C.caliber == caliber)
							C.loc = src
							loaded += C
							AM.stored_ammo -= C //should probably go inside an ammo_magazine proc, but I guess less proc calls this way...
							count++
				if(count)
					if(reload_sound) playsound(src.loc, reload_sound, 75, 1)
					cock_gun(user)
			if(AMMO_BOX)
				if(loaded.len >= max_shells)
					to_chat(user, "<span class='warning'>[src] is full.</span>")//already a magazine here
					return
				var/count = 0
				if (do_after(user, (AM.reload_delay), user))
					for(var/obj/item/ammo_casing/C in AM.stored_ammo)
						if(loaded.len >= max_shells)
							break
						if(C.caliber == caliber)
							C.loc = src
							loaded += C
							AM.stored_ammo -= C //should probably go inside an ammo_magazine proc, but I guess less proc calls this way...
							count++
							break
				if(count)
					if(reload_sound) playsound(src.loc, reload_sound, 75, 1)
					cock_gun(user)
		AM.update_icon()
	else if(istype(A, /obj/item/ammo_casing))
		var/obj/item/ammo_casing/C = A
		if(!(load_method & SINGLE_CASING) || caliber != C.caliber)
			return //incompatible
		if(loaded.len >= max_shells)
			to_chat(user, "<span class='warning'>[src] is full.</span>")
			return

		if(C.amount > 1)
			C.amount -= 1
			var/obj/item/ammo_casing/inserted_casing = new /obj/item/ammo_casing(src)
			inserted_casing.desc = C.desc
			inserted_casing.caliber = C.caliber
			inserted_casing.projectile_type = C.projectile_type
			inserted_casing.icon_state = C.icon_state
			inserted_casing.spent_icon = C.spent_icon
			inserted_casing.maxamount = C.maxamount
			if(ispath(inserted_casing.projectile_type) && C.BB)
				inserted_casing.BB = new inserted_casing.projectile_type(inserted_casing)
			C.update_icon()
			inserted_casing.update_icon()
			loaded.Insert(1, inserted_casing)
		else
			user.remove_from_mob(C)
			C.loc = src
			loaded.Insert(1, C) //add to the head of the list
		user.visible_message("[user] inserts \a [C] into [src].", "You insert \a [C] into [src].")
		if(reload_sound) playsound(src.loc, reload_sound, 75, 1)

	update_icon()

//attempts to unload src. If allow_dump is set to 0, the speedloader unloading method will be disabled
/obj/item/weapon/gun/projectile/proc/unload_ammo(mob/user, var/allow_dump=1)
	if(is_jammed)
		user.visible_message("\The [user] begins to unjam [src].", "You clear the jam and unload [src]")
		if(!do_after(user, rand(4,20), src))
			return
		is_jammed = 0
		playsound(src.loc, 'sound/weapons/gunhandling/unjam.ogg', 50, 1)
	if(ammo_magazine)
		playsound(user, unload_sound, 60, 1)
		if(ammo_magazine.load_delay)
			if(!do_after (user, ammo_magazine.load_delay/3))
				return
		user.put_in_hands(ammo_magazine)
		user.visible_message("[user] removes [ammo_magazine] from [src].", "<span class='notice'>You remove [ammo_magazine] from [src].</span>")
		ammo_magazine.update_icon()
		ammo_magazine = null
	else if(loaded.len)
		//presumably, if it can be speed-loaded, it can be speed-unloaded.
		if(allow_dump && (load_method & SPEEDLOADER))
			var/count = 0
			var/turf/T = get_turf(src)
			if(T)
				for(var/obj/item/ammo_casing/C in loaded)
					C.loc = T
					count++
				loaded.Cut()
			if(count)
				user.visible_message("[user] unloads [src].", "<span class='notice'>You unload [count] round\s from [src].</span>")
				playsound(user, unload_sound, 60, 1)
		else if(load_method & SINGLE_CASING)
			var/obj/item/ammo_casing/C = loaded[loaded.len]
			loaded.len--
			user.put_in_hands(C)
			user.visible_message("[user] removes \a [C] from [src].", "<span class='notice'>You remove \a [C] from [src].</span>")
			playsound(user, unload_sound, 60, 1)
	else
		to_chat(user, "<span class='warning'>[src] is empty.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/attackby(var/obj/item/A as obj, mob/user as mob)
/*	if(istype(A, /obj/item/weapon/rasp))
		if (src.condition < 100 || src.condition >90 && src.condition != 0)
			user << "\blue You start repair the [src] with the [A]"
			sleep(50)
			user << "\blue You fix the [src]"
			src.condition += 5
			if (prob(100 - src.condition))
				del(A)
*/
	if(istype(A, /obj/item/weapon/gunsmith/upgrade))
		if(istype(A, /obj/item/weapon/gunsmith/upgrade/suppressor) && src.upg_sup == 1)
			user << "\blue You began installing upgrade."
			sleep(80)
			src.silenced = 1
			src.accuracy += 1
			if(src.screen_shake >= 1)
				src.screen_shake -= 1
			user << "\blue Success!"
			src.upg_sup = 2
			src.desc += " [A.name]."
			if(src.condition <= 90 && src.condition != 0)
				src.condition += 10
			del(A)
			return
		if(istype(A, /obj/item/weapon/gunsmith/upgrade/barrelarm) && src.upg_bar == 1)
			user << "\blue You began installing upgrade."
			sleep(80)
			src.screen_shake += 2
			if(src.accuracy >= 2)
				src.accuracy -= 2
			user << "\blue Success!"
			src.upg_bar = 2
			src.desc += " [A.name]."
			if(src.condition <= 90 && src.condition != 0)
				src.condition += 10
			del(A)
			return
		if(istype(A, /obj/item/weapon/gunsmith/upgrade/rapidblowback) && src.upg_rap == 1)
			user << "\blue You began installing upgrade."
			sleep(80)
			src.accuracy += 1
			if(src.screen_shake >= 3)
				src.screen_shake -= 3
			else
				src.screen_shake = 0
			user << "\blue Success!"
			src.upg_rap = 2
			src.desc += " [A.name]."
			if(src.condition <= 90 && src.condition != 0)
				src.condition += 10
			del(A)
			return
		if(istype(A, /obj/item/weapon/gunsmith/upgrade/autofire) && src.upg_aut == 1)
			user << "\blue You began installing upgrade."
			sleep(80)
			user << "\blue Success!"
			src.upg_aut = 2
			src.desc += " [A.name]."
			src.accuracy += 1
			if(src.condition <= 90 && src.condition != 0)
				src.condition += 10
			del(A)
			return
		if(istype(A, /obj/item/weapon/gunsmith/upgrade/stabilizer) && src.upg_stb == 1)
			user << "\blue You began installing upgrade."
			sleep(80)
			src.screen_shake += 1
			if(src.accuracy >= 3)
				src.accuracy -= 3
			else
				src.accuracy = 0
			user << "\blue Success!"
			upg_stb = 2
			src.desc += " [A.name]."
			if(src.condition <= 90 && src.condition != 0)
				src.condition += 10
			del(A)
			return
		else
			user << "\blue You can not install upgrade on [src]!"
	else
		load_ammo(A, user)
	return


/obj/item/weapon/gun/projectile/attack_self(mob/user as mob)
	if(firemodes.len > 1)
		..()
	else
		unload_ammo(user)

/obj/item/weapon/gun/projectile/attack_hand(mob/user as mob)
	if(user.get_inactive_hand() == src)
		unload_ammo(user, allow_dump=0)
	else
		return ..()

/obj/item/weapon/gun/projectile/afterattack(atom/A, mob/living/user)
	..()
	if(!is_jammed)
		if (prob(3 * src.degradation_rate) && src.condition < 100 && src.condition != 0)
			src.condition -= 1
		if (condition < 70 && prob(((100 - src.condition) / 100) * src.jam_chance))
			src.visible_message("<span class='danger'>\The [src] jams!</span>")
			is_jammed = 1
		if(condition < 15 && prob(src.condition * src.jam_chance))
			user.visible_message("[src] blows into pieces!", "\red <b>[src] blows into pieces!</b>")
			for(var/mob/K in viewers(usr))
				K << 'sound/effects/bang.ogg'
			var/mob/living/M = user
			M.take_organ_damage(40,80)
			qdel(src)
			new /obj/item/weapon/metalparts(user.loc)
			new /obj/item/weapon/metalparts(user.loc)
			new /obj/item/weapon/metalparts(user.loc)
	if(auto_eject && ammo_magazine && ammo_magazine.stored_ammo && !ammo_magazine.stored_ammo.len)
		ammo_magazine.loc = get_turf(src.loc)
		user.visible_message(
			"[ammo_magazine] falls out and clatters on the floor!",
			"<span class='notice'>[ammo_magazine] falls out and clatters on the floor!</span>"
			)
		if(auto_eject_sound)
			playsound(user, auto_eject_sound, 40, 1)
		ammo_magazine.update_icon()
		ammo_magazine = null
		update_icon() //make sure to do this after unsetting ammo_magazine

/obj/item/weapon/gun/projectile/examine(mob/user)
	. = ..(user)
	if(is_jammed)
		to_chat(user, "<span class='warning'>It looks jammed.</span>")
	if(ammo_magazine)
		to_chat(user, "It has \a [ammo_magazine] loaded.")
	if(condition > 0)
		usr << "Condition is [condition] %."
	if(ammocounter)
		to_chat(user, "Has [getAmmo()] round\s remaining.")
	return

/obj/item/weapon/gun/projectile/proc/getAmmo()
	var/bullets = 0
	if(loaded)
		bullets += loaded.len
	if(ammo_magazine && ammo_magazine.stored_ammo)
		bullets += ammo_magazine.stored_ammo.len
	if(chambered)
		bullets += 1
	return bullets

/* Unneeded -- so far.
//in case the weapon has firemodes and can't unload using attack_hand()
/obj/item/weapon/gun/projectile/verb/unload_gun()
	set name = "Unload Ammo"
	set category = "Object"
	set src in usr

	if(usr.stat || usr.restrained()) return

	unload_ammo(usr)
*/



