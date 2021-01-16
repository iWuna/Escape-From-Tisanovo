/obj/item/ammo_casing
	name = "bullet casing"
	desc = "A bullet casing."
	icon = 'icons/obj/ammo.dmi'
	icon_state = "s-casing"
	randpixel = 10
	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_EARS
	throwforce = 1
	w_class = ITEM_SIZE_TINY

	var/leaves_residue = 1
	var/caliber = ""					//Which kind of guns it can be loaded into
	var/projectile_type					//The bullet type to create when New() is called
	var/obj/item/projectile/BB = null	//The loaded bullet - make it so that the projectiles are created only when needed?
	var/spent_icon = "s-casing-spent"
	var/casing_sound = 'sound/weapons/casings/casing_drop.ogg' //Todo: Shotgun shell sound.
	var/amount = 1
	var/maxamount = 15

/obj/item/ammo_casing/New()
	..()
	pixel_x = rand(-10, 10)
	pixel_y = rand(-10, 10)
	if(ispath(projectile_type))
		BB = new projectile_type(src)
//removes the projectile from the ammo casing
/obj/item/ammo_casing/proc/expend()
	. = BB
	BB = null
	set_dir(pick(GLOB.alldirs)) //spin spent casings

	// Aurora forensics port, gunpowder residue.
	if(leaves_residue)
		leave_residue()

	update_icon()

/obj/item/ammo_casing/attack_hand(mob/user)
	if((src.amount > 1) && (src == user.get_inactive_hand()))
		src.amount -= 1
		var/obj/item/ammo_casing/new_casing = new /obj/item/ammo_casing(get_turf(user))
		new_casing.desc = src.desc
		new_casing.caliber = src.caliber
		new_casing.projectile_type = src.projectile_type
		new_casing.icon_state = src.icon_state
		new_casing.spent_icon = src.spent_icon
		new_casing.maxamount = src.maxamount
		if(ispath(new_casing.projectile_type) && src.BB)
			new_casing.BB = new new_casing.projectile_type(new_casing)
		else
			new_casing.BB = null
		new_casing.update_icon()
		src.update_icon()
		user.put_in_active_hand(new_casing)
	else
		return ..()

/obj/item/ammo_casing/proc/leave_residue()
	var/mob/living/carbon/human/H
	if(ishuman(loc))
		H = loc //in a human, somehow
	else if(loc && ishuman(loc.loc))
		H = loc.loc //more likely, we're in a gun being held by a human

	if(H)
		if(H.gloves && (H.l_hand == loc || H.r_hand == loc))
			var/obj/item/clothing/G = H.gloves
			G.gunshot_residue = caliber
		else
			H.gunshot_residue = caliber

/obj/item/ammo_casing/throw_at(var/atom/target)
	..()
	if(isturf(target))

		var/Xplusbound = 34
		var/Yplusbound = 34

		var/Xminusbound = -34
		var/Yminusbound = -34

//Add diagonals if it winds up mattering.
		if(isturf(get_step(src, NORTH)))
			Yplusbound = 15
		if(isturf(get_step(src, EAST)))
			Xplusbound = 15
		if(isturf(get_step(src, SOUTH)))
			Yminusbound = -15
		if(isturf(get_step(src, WEST)))
			Xminusbound = -15
		animate(src, pixel_x = rand(Xminusbound,Xplusbound), pixel_y = rand(Yminusbound,Yplusbound), time = 5, easing = BOUNCE_EASING, flags = ANIMATION_PARALLEL )

/obj/item/ammo_casing/throw_impact()
	..()
	playsound(loc, casing_sound, 50, 5)


/obj/item/ammo_casing/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/screwdriver))
		if(!BB)
			to_chat(user, "<span class='notice'>There is no bullet in the casing to inscribe anything into.</span>")
			return

		var/tmp_label = ""
		var/label_text = sanitizeSafe(input(user, "Inscribe some text into \the [initial(BB.name)]","Inscription",tmp_label), MAX_NAME_LEN)
		if(length(label_text) > 20)
			to_chat(user, "<span class='warning'>The inscription can be at most 20 characters long.</span>")
		else if(!label_text)
			to_chat(user, "<span class='notice'>You scratch the inscription off of [initial(BB)].</span>")
			BB.name = initial(BB.name)
		else
			to_chat(user, "<span class='notice'>You inscribe \"[label_text]\" into \the [initial(BB.name)].</span>")
			BB.name = "[initial(BB.name)] (\"[label_text]\")"
	else if(istype(W, /obj/item/ammo_casing) && (src.amount != src.maxamount) && (src.desc == W.desc))
		var/obj/item/ammo_casing/merged_casing = W
		if((!src.BB && !merged_casing.BB) || (src.BB && merged_casing.BB))
			if(merged_casing.amount > 1)
				src.amount += 1
				merged_casing.amount -= 1
				merged_casing.update_icon()
			else
				src.amount += 1
				QDEL_NULL(merged_casing)
			src.update_icon()
	else ..()

/obj/item/ammo_casing/update_icon()
	if(spent_icon && !BB)
		icon_state = spent_icon
		mouse_opacity = 0
	src.overlays.Cut()
	if(amount > 1)
		src.pixel_x = 0
		src.pixel_y = 0
	var/icon_amount
	for(icon_amount = 1; icon_amount < src.amount, icon_amount++)
		var/image/temp_image = image(src.icon, src.icon_state)
		temp_image.pixel_x = (-1) ** round(icon_amount/2) * round(11 * icon_amount/src.maxamount) + pick(-1, 0, 1)
		temp_image.pixel_y = (-1) ** round((icon_amount + 1)/2) * round(11 * icon_amount/src.maxamount) + pick(-1, 0, 1)
		var/matrix/temp_image_matrix = matrix()
		temp_image_matrix.Turn(round(45 * rand(0, 16) / 2))
		temp_image.transform = temp_image_matrix
		src.overlays += temp_image

/obj/item/ammo_casing/examine(mob/user)
	. = ..()
	user << "There [(amount == 1)? "is" : "are"] [amount] round\s left!"
	if (!BB)
		user << "[(amount == 1)? "This one is" : "These ones are"] spent."


//Gun loading types
#define SINGLE_CASING 	1	//The gun only accepts ammo_casings. ammo_magazines should never have this as their mag_type.
#define SPEEDLOADER 	2	//Transfers casings from the mag to the gun when used.
#define MAGAZINE 		4	//The magazine item itself goes inside the gun
#define AMMO_BOX 		3
//An item that holds casings and can be used to put them inside guns
/obj/item/ammo_magazine
	name = "magazine"
	desc = "A magazine for some kind of gun."
	icon_state = "357"
	icon = 'icons/obj/ammo.dmi'
	flags = CONDUCT
	slot_flags = SLOT_BELT
	item_state = "syringe_kit"
	matter = list(DEFAULT_WALL_MATERIAL = 500)
	throwforce = 5
	w_class = ITEM_SIZE_SMALL
	throw_speed = 4
	throw_range = 10
	picksound = 'sound/items/interactions/ammo_pickup.wav'

	var/load_delay = 10
	var/list/stored_ammo = list()
	var/mag_type = SPEEDLOADER //ammo_magazines can only be used with compatible guns. This is not a bitflag, the load_method var on guns is.
	var/caliber = "357"
	var/max_ammo = 7
	var/reload_delay = 2 //when we need to make reload slower

	var/ammo_type = /obj/item/ammo_casing //ammo type that is initially loaded
	var/initial_ammo = null

	var/multiple_sprites = 0
	//because BYOND doesn't support numbers as keys in associative lists
	var/list/icon_keys = list()		//keys
	var/list/ammo_states = list()	//values


/obj/item/ammo_magazine/box
	w_class = ITEM_SIZE_NORMAL

/obj/item/ammo_magazine/New()
	..()
	if(multiple_sprites)
		initialize_magazine_icondata(src)

	if(isnull(initial_ammo))
		initial_ammo = max_ammo

	if(initial_ammo)
		for(var/i in 1 to initial_ammo)
			stored_ammo += new ammo_type(src)
	update_icon()

/obj/item/ammo_magazine/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/ammo_casing))
		var/obj/item/ammo_casing/C = W
		if(C.caliber != caliber)
			to_chat(user, "<span class='warning'>[C] does not fit into [src].</span>")
			return
		if(stored_ammo.len >= max_ammo)
			to_chat(user, "<span class='warning'>[src] is full!</span>")
			return
		playsound(src.loc, 'sound/weapons/gunhandling/bulletin_mag.wav', 80, 1)
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
			stored_ammo.Insert(1, inserted_casing)
		else
			user.remove_from_mob(C)
			C.loc = src
			stored_ammo.Insert(1, C) //add to the head of the list

	if(istype(W, /obj/item/ammo_magazine/box))
		var/obj/item/ammo_magazine/box/L = W
		if(L.caliber != caliber)
			user << "<span class='warning'>The ammo in [L] does not fit into [src].</span>"
			return
		if(!L.stored_ammo.len)
			user << "<span class='warning'>There's no more ammo [L]!</span>"
			return
		if(stored_ammo.len >= max_ammo)
			user << "<span class='warning'>[src] is full!</span>"
			return
		var/obj/item/ammo_casing/AC = L.stored_ammo[1] //select the next casing.
		L.stored_ammo -= AC //Remove this casing from loaded list of the clip.
		AC.loc = src
		stored_ammo.Insert(1, AC) //add it to the head of our magazine's list
		L.update_icon()
		update_icon()
		playsound(src.loc, 'sound/weapons/gunhandling/bulletin_mag.wav', 80, 1)
	update_icon()



/obj/item/ammo_magazine/attack_self(mob/user)
	if(!stored_ammo.len)
		to_chat(user, "<span class='notice'>[src] is empty!</span>")
		return
	to_chat(user, "There [(stored_ammo.len == 1)? "is" : "are"] [stored_ammo.len] round\s left!")



/obj/item/ammo_magazine/attack_hand(mob/user)
	if(user.get_inactive_hand() == src)
		if(!stored_ammo.len)
			to_chat(user, "<span class='notice'>[src] is already empty!</span>")
		else
			var/obj/item/ammo_casing/C = stored_ammo[stored_ammo.len]
			stored_ammo-=C
			user.put_in_hands(C)
			user.visible_message("\The [user] removes \a [C] from [src].", "<span class='notice'>You remove \a [C] from [src].</span>")
			update_icon()
	else
		..()
		return

/obj/item/ammo_magazine/update_icon()
	if(multiple_sprites)
		//find the lowest key greater than or equal to stored_ammo.len
		var/new_state = null
		for(var/idx in 1 to icon_keys.len)
			var/ammo_count = icon_keys[idx]
			if (ammo_count >= stored_ammo.len)
				new_state = ammo_states[idx]
				break
		icon_state = (new_state)? new_state : initial(icon_state)
/obj/item/ammo_magazine/examine(mob/user)
	. = ..()
	to_chat(user, "There [(stored_ammo.len == 1)? "is" : "are"] [stored_ammo.len] round\s left!")

//magazine icon state caching
/var/global/list/magazine_icondata_keys = list()
/var/global/list/magazine_icondata_states = list()

/proc/initialize_magazine_icondata(var/obj/item/ammo_magazine/M)
	var/typestr = "[M.type]"
	if(!(typestr in magazine_icondata_keys) || !(typestr in magazine_icondata_states))
		magazine_icondata_cache_add(M)

	M.icon_keys = magazine_icondata_keys[typestr]
	M.ammo_states = magazine_icondata_states[typestr]

/proc/magazine_icondata_cache_add(var/obj/item/ammo_magazine/M)
	var/list/icon_keys = list()
	var/list/ammo_states = list()
	var/list/states = icon_states(M.icon)
	for(var/i = 0, i <= M.max_ammo, i++)
		var/ammo_state = "[M.icon_state]-[i]"
		if(ammo_state in states)
			icon_keys += i
			ammo_states += ammo_state

	magazine_icondata_keys["[M.type]"] = icon_keys
	magazine_icondata_states["[M.type]"] = ammo_states