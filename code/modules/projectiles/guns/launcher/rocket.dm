/obj/item/weapon/gun/launcher/rocket
	name = "rocket launcher"
	desc = "MAGGOT."
	icon_state = "rocket"
	item_state = "rocket"
	w_class = 5
	throw_speed = 2
	throw_range = 10
	force = 5.0
	flags =  CONDUCT
	slot_flags = 0
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
//	fire_sound = 'sound/weapons/gunshot/rocketfire1.ogg'

	release_force = 15
	throw_distance = 30
	var/max_rockets = 1
	var/is_used = FALSE
	var/list/rockets = new/list()

/obj/item/weapon/gun/launcher/rocket/examine(mob/user)
	if(!..(user, 2))
		return
	to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")

/obj/item/weapon/gun/launcher/rocket/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/ammo_casing/rpg_missile))
		if(rockets.len < max_rockets)
			user.drop_item()
			I.loc = src
			rockets += I
			to_chat(user, "\blue You put the rocket in [src].")
			to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")
		else
			to_chat(user, "\red [src] cannot hold more rockets.")


/obj/item/weapon/gun/launcher/rocket/consume_next_projectile()
	if(rockets.len)
		var/obj/item/ammo_casing/rpg_missile/I = rockets[1]
		var/obj/item/projectile/bullet/rgprocket/M = new (src)
		//M.primed = TRUE
		rockets -= I
		return M
	return null

/obj/item/weapon/gun/launcher/rocket/handle_post_fire(mob/user, atom/target)
	message_admins("[key_name_admin(user)] fired a rocket from a rocket launcher ([src.name]) at [target].")
	log_game("[key_name_admin(user)] used a rocket launcher ([src.name]) at [target].")
	..()

///////////////////////////////////////////////////////////////////////////////////
//////////////////
//////////////////////////////////////////////////////////////////////////////////
/obj/item/weapon/gun/launcher/rpg7
	name = "RPG7"
	desc = "A grenade launcher, standard-issued by the Soviet Army."
	icon_state = "rpg" ///change
	item_state = "rpg1" ///change
	w_class = 5
	throw_speed = 3
	throw_range = 40
	force = 5.0
	flags =  CONDUCT
	slot_flags = 0
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 5)
	fire_sound = 'sound/weapons/gunshot/rpg_fire.ogg'
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

	release_force = 40
	throw_distance = 30
	var/max_rockets = 1
	var/is_used = FALSE
	var/list/rockets = new/list(/obj/item/ammo_casing/rpg_missile)
	var/datum/effect/effect/system/smoke_spread/puff

/obj/item/weapon/gun/launcher/rpg7/New()
	..()
	puff = new /datum/effect/effect/system/smoke_spread()
	puff.attach(src)
	update_icon()

/obj/item/weapon/gun/launcher/rpg7/update_icon()
	..()
	if(rockets.len)
		icon_state = "rpg"
		item_state = "rpg1"
	else
		icon_state = "rpg-empty"
		item_state = "rpg1-empty"
	update_held_icon()

/obj/item/weapon/gun/launcher/rpg7/examine(mob/user)
	if(!..(user, 2))
		return
	to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")

/obj/item/weapon/gun/launcher/rpg7/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/ammo_casing/rpg_missile))
		if(rockets.len < max_rockets)
			playsound(src.loc,'sound/weapons/gunporn/rpgreload.ogg',80, 0)
			if(do_after(usr, 30, src))
				user.drop_item()
				I.loc = src
				rockets += I
				to_chat(user, "\blue You put the rocket in [src].")
				to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")
				update_icon()
		else
			to_chat(user, "\red [src] cannot hold more rockets.")
			update_icon()


/obj/item/weapon/gun/launcher/rpg7/consume_next_projectile(mob/user)
	if(rockets.len)
		var/obj/item/ammo_casing/rpg_missile/I = rockets[1]
		var/obj/item/projectile/bullet/rgprocket/M = new (src)
		//M.primed = TRUE
		rockets -= I
		return M
	return null

/obj/item/weapon/gun/launcher/rpg7/handle_post_fire(mob/user, atom/target)
	sleep(1)
	var/smoke_dir = user.dir
	if(user)
		switch(smoke_dir) //We want the opposite of their direction.
			if(2,8)
				smoke_dir /= 2
			if(1,4)
				smoke_dir *= 2
	puff.set_up(1,,,smoke_dir)
	puff.start()


///////////////////Not ours///////////////////////////////////////////////
/obj/item/weapon/gun/launcher/oneuse/
	var/folded = 1

/obj/item/weapon/gun/launcher/oneuse/attack_self(mob/user)
	if(folded)
		playsound(src.loc,'sound/weapons/gunporn/rpgoneuse_deploying.ogg',80, 0)
		user.setClickCooldown(DEFAULT_QUICK_COOLDOWN)
		if(do_after(usr, 30, src))
			usr.visible_message("<span class='notice'>\The [usr] extends [src].</span>", "<span class='notice'>You deploy the [src]</span>")
			folded = 0
			icon_state = "[icon_state]-deployed"
			item_state = "[item_state]-deployed"
			slot_flags = null
	else
		return

/obj/item/weapon/gun/launcher/oneuse/special_check(mob/user)
	if(folded == 1)
		to_chat(user, "I have to deploy it first.")
		return 0
	return ..()


/obj/item/weapon/gun/launcher/oneuse/rpg18
	name = "RPG-18 'Mukha'"
	desc = "Single-use rocket launcher used by the Soviet Army. Also known as 'Mukha'."
	icon_state = "rpg18"
	item_state = "rpg18"
	w_class = 4
	throw_speed = 2
	throw_range = 10
	force = 5.0
	flags =  CONDUCT
	slot_flags = 0
	fire_sound = 'sound/weapons/gunshot/rpg22.ogg'
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	release_force = 25
	throw_distance = 40
	var/max_rockets = 1
	var/is_used = FALSE
	var/list/rockets = new/list(/obj/item/ammo_casing/rpg_missile)
	var/datum/effect/effect/system/smoke_spread/puff

/obj/item/weapon/gun/launcher/oneuse/rpg18/New()
	..()
	rockets += new /obj/item/ammo_casing/rpg_missile(src)
	puff = new /datum/effect/effect/system/smoke_spread()
	puff.attach(src)
	update_icon()

/obj/item/weapon/gun/launcher/oneuse/rpg18/handle_post_fire(mob/user, atom/target)
	..()
	sleep(1)
	var/smoke_dir = user.dir
	if(user)
		switch(smoke_dir) //We want the opposite of their direction.
			if(2,8)
				smoke_dir /= 2
			if(1,4)
				smoke_dir *= 2
	puff.set_up(1,,,smoke_dir)
	puff.start()
	name += " (Used)"
	is_used = TRUE

/obj/item/weapon/gun/launcher/oneuse/rpg18/examine(mob/user)
	if(!..(user, 2))
		return
	to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")

/obj/item/weapon/gun/launcher/oneuse/rpg18/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/ammo_casing/rpg_missile))
		if(!is_used)
			if(rockets.len < max_rockets)
				user.drop_item()
				I.loc = src
				rockets += I
				to_chat(user, "\blue You put the rocket in [src].")
				to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")
			else
				to_chat(user, "\red [src] cannot hold more rockets.")
		else
			to_chat(user, "\red This one has been used.")

/obj/item/weapon/gun/launcher/oneuse/rpg18/consume_next_projectile()
	if(rockets.len)
		var/obj/item/ammo_casing/rpg_missile/I = rockets[1]
		var/obj/item/projectile/bullet/rgprocket/M = new (src)
		//M.primed = TRUE
		rockets -= I
		return M
	return null


/obj/item/weapon/gun/launcher/oneuse/rpg18/rpg22
	name = "RPG-22 'Netto'"
	icon_state = "rpg22"


/obj/item/weapon/gun/launcher/oneuse/m72
	name = "M72 LAW"
	desc = "That's the one-use RPG used by US army."
	icon_state = "m72"
	item_state = "m72"
	w_class = 4
	throw_speed = 2
	throw_range = 10
	force = 5.0
	flags =  CONDUCT
	slot_flags = 0
	fire_sound = 'sound/weapons/gunshot/m72.wav'
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	release_force = 25
	throw_distance = 40
	var/max_rockets = 1
	var/is_used = FALSE
	var/list/rockets = new/list(/obj/item/ammo_casing/rpg_missile)
	var/datum/effect/effect/system/smoke_spread/puff

/obj/item/weapon/gun/launcher/oneuse/m72/New()
	..()
	rockets += new /obj/item/ammo_casing/rpg_missile(src)
	puff = new /datum/effect/effect/system/smoke_spread()
	puff.attach(src)
	update_icon()

/obj/item/weapon/gun/launcher/oneuse/m72/handle_post_fire(mob/user, atom/target)
	..()
	sleep(1)
	var/smoke_dir = user.dir
	if(user)
		switch(smoke_dir) //We want the opposite of their direction.
			if(2,8)
				smoke_dir /= 2
			if(1,4)
				smoke_dir *= 2
	puff.set_up(1,,,smoke_dir)
	puff.start()
	name += " (Used)"
	is_used = TRUE

/obj/item/weapon/gun/launcher/oneuse/m72/attackby(obj/item/I as obj, mob/user as mob)
	if(istype(I, /obj/item/ammo_casing/rpg_missile))
		if(!is_used)
			if(rockets.len < max_rockets)
				user.drop_item()
				I.loc = src
				rockets += I
				to_chat(user, "\blue You put the rocket in [src].")
				to_chat(user, "\blue [rockets.len] / [max_rockets] rockets.")
			else
				to_chat(user, "\red [src] cannot hold more rockets.")
		else
			to_chat(user, "\red This one has been used.")

/obj/item/weapon/gun/launcher/oneuse/m72/consume_next_projectile()
	if(rockets.len)
		var/obj/item/ammo_casing/rpg_missile/I = rockets[1]
		var/obj/item/projectile/bullet/rgprocket/he/M = new (src)
		//M.primed = TRUE
		rockets -= I
		return M
	return null
