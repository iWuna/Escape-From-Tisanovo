/////////////////////////some bayonet code///////////////////////

/obj/item/weapon/gun/projectile/automatic/rifle/
	var/bayonet_type = null
	var/bayonet_attachable = 0
	var/obj/item/weapon/material/knife/bayonet/knife = null

/obj/item/weapon/gun/projectile/automatic/rifle/New()
	..()
	src.verbs -= /obj/item/weapon/gun/projectile/automatic/rifle/verb/remove_bayonet

/obj/item/weapon/gun/projectile/automatic/rifle/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, src.bayonet_type) && bayonet_attachable)
		knife = W
		user.drop_item()
		W.loc = src
		src.attack_verb = W.attack_verb
		src.sharp += W.sharp
		src.force += W.force
		bayonet_attachable = 0
		to_chat(user, "<span class='notice'>You attach [knife.name] to the [src].</span>")
		src.verbs += /obj/item/weapon/gun/projectile/automatic/rifle/verb/remove_bayonet
		update_icon()
	..()

/obj/item/weapon/gun/projectile/automatic/rifle/update_icon()
	..()
	if(knife)
		var/image/I = image('icons/obj/bayonets.dmi', src, knife.icon_state)
		I.pixel_x += 10
		I.pixel_y += 10
		overlays += I
	else
		overlays.Cut()

/obj/item/weapon/gun/projectile/automatic/rifle/verb/remove_bayonet()
	set name = "Detach Bayonet"
	set category = "Object"
	set popup_menu = 1
	set src in usr

	if(knife)
		knife.loc = usr
		usr.put_in_hands(knife)
		knife = FALSE
		src.attack_verb = initial(attack_verb)
		src.sharp = initial(sharp)
		src.force = initial(force)
		bayonet_attachable = 1
		to_chat(usr, "<span class='notice'>You detach the bayonet from the [src].</span>")
		src.verbs -= /obj/item/weapon/gun/projectile/automatic/rifle/verb/remove_bayonet
		update_icon()


///////////////////////bayonet code ends here//////////////////////////

/obj/item/weapon/gun/projectile/automatic/rifle/coltmodel733
	name = "Colt Model 733"
	desc = "A standard-issue USMC carbine."
	icon_state = "coltmodel733"
	item_state = "m16"
	w_class = 4
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	magazine_type = null
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	one_hand_penalty = 2
	accuracy = 1
	fire_delay = 2
	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/m16_dist.wav'
	jam_chance = 2
	slowdown_general = 0.3

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="short bursts", burst=3, fire_delay=null, move_delay=1,    one_hand_penalty=3, burst_accuracy=list(1,0,-1),       dispersion=list(0.3, 0.6, 0.6)),
		list(mode_name="long bursts",   burst=5, fire_delay=null, move_delay=2,    one_hand_penalty=4, burst_accuracy=list(1,0,0,-1,-2), dispersion=list(0.3, 0.6, 0.6, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/coltmodel733/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "coltmodel733"
	else
		icon_state = "coltmodel733-empty"


/obj/item/weapon/gun/projectile/automatic/rifle/ak74
	name = "AK-74"
	desc = "A standard-issue Soviet Army combat rifle. Chambers 5.45x39 rounds."
	icon_state = "ak74"
	item_state = "ak74"
	w_class = 5
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = list(/obj/item/ammo_magazine/c545x39m, /obj/item/ammo_magazine/c545x39b)
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 2.5
	fire_delay = 2
	wielded_item_state = "ak74-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h4/
	bayonet_attachable = 1
	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.2),                     automatic = 0.5),
		)
	jam_chance = 1.5
	slowdown_general = 0.45



/obj/item/weapon/gun/projectile/automatic/rifle/ak74/update_icon()
	..()

	if(ammo_magazine)
		icon_state = "ak74"
		item_state = "ak74"
		wielded_item_state = "ak74-wielded"
	else
		icon_state = "ak74-empty"
		item_state = "ak74-empty"
		wielded_item_state = "ak74-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/ak74/black
	desc = "AK-74 with polymer kit and dim finish. Chambers 5.45x39 rounds."
	icon_state = "ak74black"

/obj/item/weapon/gun/projectile/automatic/rifle/ak74/black/update_icon()
	..()

	if(ammo_magazine)
		icon_state = "ak74black"
	else
		icon_state = "ak74black-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl
	name = "AK-74"
	desc = "A standard-issue Soviet Army combat rifle with a GP-25 launcher attached. Chambers 5.45x39 rounds."
	icon_state = "ak74gl"
	item_state = "ak74gl"
	w_class = 5
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = list(/obj/item/ammo_magazine/c545x39m, /obj/item/ammo_magazine/c545x39b)
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2.5
	fire_delay = 2
	wielded_item_state = "ak74gl-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	jam_chance = 1.5
	slowdown_general = 0.45

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/gp25/launcher

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.2),                     automatic = 0.5),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//load check it for it's type
		playsound(src, 'sound/weapons/gunporn/m203_insertgrenade.wav', 50, 1)
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		playsound(src, 'sound/weapons/gunporn/m203_openbarrel.wav', 50, 1)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
			playsound(src, 'sound/weapons/gunporn/m203_empty.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "ak74gl"
		wielded_item_state = "ak74gl-wielded"
	else
		icon_state = "ak74gl-empty"
		wielded_item_state = "ak74gl-wielded-empty"


/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/verb/set_gp()
	set name = "Grenade Launcher"
	set category = "Object"
	set src in usr

	if(usr.get_active_hand() == src)
		if(launcher)
			use_launcher = !use_launcher
			if(do_after(usr, 1, src))
				to_chat(usr, "<span class='notice'>You [use_launcher ? "prepare the [launcher.name]." : " take your gun back."]</span>")
				if (use_launcher)
					usr.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")
				else
					usr.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
				playsound(src, 'sound/weapons/gunporn/m203_select.wav', 50, 1)
	else
		to_chat(usr, "\red You should be holding weapon in active hand to do this!")

/obj/item/weapon/gun/projectile/automatic/rifle/ak74gl/pickup(mob/user)
	..()
	if(!safety)
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
		if (use_launcher)
			spawn(1)
				user.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")

/obj/item/weapon/gun/projectile/automatic/rifle/aks74
	name = "AKS-74"
	desc = "A lighter version of the standard-issue Soviet Army combat rifle. Chambers 5.45x39 rounds."
	icon_state = "aks74"
	item_state = "aks"
	w_class = 4
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = /obj/item/ammo_magazine/c545x39m
	magazine_type = /obj/item/ammo_magazine/c545x39m
	one_hand_penalty = 2
	accuracy = 2.5
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h4/
	bayonet_attachable = 1
	jam_chance = 1.7
	slowdown_general = 0.3

	wielded_item_state = "aks-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",     burst=1, fire_delay=0.7,  move_delay=1,    one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.1),                     automatic = 0.5),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/aks74/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "aks74"
		wielded_item_state = "aks-wielded"
	else
		icon_state = "aks74-empty"
		wielded_item_state = "aks-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/m16a2 //DO NOT USE FOR NOW
	name = "M16A2"
	desc = "A standard-issue USMC combat rifle. Chambers 5.56x39 rounds."
	icon_state = "m16a2"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	magazine_type = null
	one_hand_penalty = 4
	accuracy = 4
	fire_delay = 1.5
	bayonet_type = /obj/item/weapon/material/knife/bayonet/usmc/
	bayonet_attachable = 1
	jam_chance = 1.8
	slowdown_general = 0.45

	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/m16_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,       dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=3,    one_hand_penalty=5, burst_accuracy=list(2,1,1),dispersion=list(0.0, 0.3, 0.3)),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/m16a2/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "m16a2"
		wielded_item_state = "m16-wielded"
	else
		icon_state = "m16a2-empty"
		wielded_item_state = "m16-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/m14 //do not use
	name = "M14"
	desc = "A former standard-issue USMC combat rifle. Chambers 7.62x51 rounds."
	icon_state = "m14"
	item_state = "m14"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	w_class = 5
	force = 10
	max_shells = 20
	caliber = "762x51"
	ammo_type = /obj/item/ammo_casing/a762x51
	load_method = MAGAZINE
	magazine_type = null
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	one_hand_penalty = 4
	accuracy = 3
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/usmc/
	bayonet_attachable = 1
	jam_chance = 1
	slowdown_general = 0.6

	fire_sound = 'sound/weapons/gunshot/m14.ogg'
	wielded_item_state = "m14-wielded"
	unload_sound = 'sound/weapons/gunporn/m14_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m14_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m14_charge.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/rifle_dist.wav'

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=2, move_delay=null, one_hand_penalty=3, burst_accuracy=null, dispersion=null),
		list(mode_name="automatic",     burst=1,  fire_delay=0.2, move_delay=3,       one_hand_penalty=9, burst_accuracy = null,  dispersion=list(0.5, 0.8),                  automatic = 0.5)
		)
/obj/item/weapon/gun/projectile/automatic/rifle/m14/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "m14"
		wielded_item_state = "m14-wielded"
	else
		icon_state = "m14-empty"
		wielded_item_state = "m14-wielded-empty"


/obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	name = "M16A1"
	desc = "A standard-issue USMC combat rifle. Chambers 5.56x45 rounds."
	icon_state = "m16a1"
	item_state = "m16"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	magazine_type = null
	one_hand_penalty = 4
	accuracy = 3
	fire_delay = 1.7
	bayonet_type = /obj/item/weapon/material/knife/bayonet/usmc/
	bayonet_attachable = 1
	jam_chance = 2
	slowdown_general = 0.45

	wielded_item_state = "m16-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/m16_dist.wav'

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=1.7,  move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=1,    one_hand_penalty=3, burst_accuracy = null,            dispersion=list(0.3, 0.5),                automatic = 0.5),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "m16a1"
		wielded_item_state = "m16-wielded"
	else
		icon_state = "m16a1-empty"
		wielded_item_state = "m16-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl
	name = "M16A1"
	desc = "A standard-issue USMC combat rifle with a M203 launcher attached. Chambers 5.56x45 rounds."
	icon_state = "m16a1gl"
	item_state = "m16gl"
	w_class = 5
	load_method = MAGAZINE
	caliber = "556x45"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a556x45
	allowed_magazines = /obj/item/ammo_magazine/c556x45m
	magazine_type = null
	one_hand_penalty = 4
	accuracy = 3
	fire_delay = 1.7
	jam_chance = 2
	slowdown_general = 0.45

	wielded_item_state = "m16gl-wielded"
	fire_sound = 'sound/weapons/gunshot/m16.ogg'
	unload_sound = 'sound/weapons/gunporn/m16_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/m16_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/m16_chargeback.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/m16_dist.wav'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/m203/launcher

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=1.7,  move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=1,    one_hand_penalty=3, burst_accuracy = null,            dispersion=list(0.3, 0.5),                automatic = 0.5),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//launcher.load check it for it's type and handles all another things so don't worry
		launcher.load(I, user)
		playsound(src, 'sound/weapons/gunporn/m203_insertgrenade.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
		playsound(src, 'sound/weapons/gunporn/m203_openbarrel.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //do we need it? :wha:
			playsound(src, 'sound/weapons/gunporn/m203_empty.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "m16a1gl"
		wielded_item_state = "m16gl-wielded"
	else
		icon_state = "m16a1gl-empty"
		wielded_item_state = "m16gl-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/verb/set_gp()
	set name = "Grenade Launcher"
	set category = "Object"
	set src in usr
	set popup_menu = 1

	if(usr.get_active_hand() == src)
		if(launcher)
			use_launcher = !use_launcher
			if(do_after(usr, 1, src))
				to_chat(usr, "<span class='notice'>You [use_launcher ? "prepare the [launcher.name]." : " take your gun back."]</span>")
				if (use_launcher)
					usr.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")
				else
					usr.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
				playsound(src, 'sound/weapons/gunporn/m203_select.wav', 50, 1)
	else
		to_chat(usr, "\red You should be holding weapon in active hand to do this!")

/obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl/pickup(mob/user)
	..()
	if(!safety)
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
		if (use_launcher)
			spawn(1)
				user.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")


/obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	name = "G3A3"
	desc = "A standard-issue Bundeswehr combat rifle. Chambers 7.62x51 rounds."
	icon_state = "g3a3"
	item_state = "g3a3"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x51
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 3
	fire_delay = 2.5
	bayonet_type = /obj/item/weapon/material/knife/bayonet/bdw/
	bayonet_attachable = 1
	jam_chance = 1
	slowdown_general = 0.45

	wielded_item_state = "g3a3-wielded"
	fire_sound = 'sound/weapons/gunshot/g3a3.ogg'
	unload_sound = 'sound/weapons/gunporn/g3_magout.wav' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/g3_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/g3_boltpull.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/g3_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=4,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,          dispersion=null,           automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.4,  move_delay=3,    one_hand_penalty=8, burst_accuracy=null, dispersion=list(0.3, 0.6 ),         automatic = 0.4)
		)

/obj/item/weapon/gun/projectile/automatic/rifle/g3a3/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "g3a3"
		wielded_item_state = "g3a3-wielded"
	else
		icon_state = "g3a3-empty"
		wielded_item_state = "g3a3-wielded-empty"
	update_held_icon()

/obj/item/weapon/gun/projectile/automatic/rifle/g3a3/old
	desc = "G3A3 Battle Rifle. This one has a wooden kit and shows signs of extended use. Chambers 7.62x51 rounds."
	icon_state = "g3a3-old"

/obj/item/weapon/gun/projectile/automatic/rifle/g3a3/old/update_icon()
	..()

	if(ammo_magazine)
		icon_state = "g3a3-old"
	else
		icon_state = "g3a3-old-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs
	name = "G3A3"
	desc = "A standard-issue Bundeswehr combat rifle with an HK79 launcher attached. Chambers 7.62x51 rounds."
	icon_state = "g3tgs"
	item_state = "g3tgs"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x51"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x51
	allowed_magazines = /obj/item/ammo_magazine/c762x51s
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 3
	fire_delay = 2.5
	jam_chance = 1.5
	slowdown_general = 0.45

	wielded_item_state = "g3tgs-wielded"
	fire_sound = 'sound/weapons/gunshot/g3a3.ogg'
	unload_sound = 'sound/weapons/gunporn/g3_magout.wav' // NEED TO CHANGE SOUNDS
	reload_sound = 'sound/weapons/gunporn/g3_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/g3_boltpull.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/g3_dist.wav'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/m203/launcher//m203 underslug uses 40mm shells  like hk69

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=4,    move_delay=null, one_hand_penalty=4, burst_accuracy=null,       dispersion=null,automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.4,  move_delay=3,    one_hand_penalty=5, burst_accuracy=null,       dispersion=list(0.3, 0.6, 0.9), automatic = 0.4),
		)


/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//launcher.load check it for it's type and handles all another things so don't worry
		launcher.load(I, user)
		playsound(src, 'sound/weapons/gunporn/m203_insertgrenade.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
		playsound(src, 'sound/weapons/gunporn/m203_openbarrel.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //do we need it? :wha:
			playsound(src, 'sound/weapons/gunporn/m203_empty.wav', 50, 1)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "g3tgs"
		wielded_item_state = "g3tgs-wielded"
	else
		icon_state = "g3tgs-empty"
		wielded_item_state = "g3tgs-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/verb/set_gp()
	set name = "Grenade Launcher"
	set category = "Object"
	set src in usr
	set popup_menu = 1

	if(usr.get_active_hand() == src)
		if(launcher)
			use_launcher = !use_launcher
			if(do_after(usr, 1, src))
				to_chat(usr, "<span class='notice'>You [use_launcher ? "prepare the [launcher.name]." : " take your gun back."]</span>")
				if (use_launcher)
					usr.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")
				else
					usr.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
				playsound(src, 'sound/weapons/gunporn/m203_select.wav', 50, 1)
	else
		to_chat(usr, "\red You should be holding weapon in active hand to do this!")

/obj/item/weapon/gun/projectile/automatic/rifle/g3tgs/pickup(mob/user)
	..()
	if(!safety)
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
		if (use_launcher)
			spawn(1)
				user.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")

/obj/item/weapon/gun/projectile/automatic/rifle/vz58
	name = "Vz.58"
	desc = "A standard-issue CSLA combat rifle. Chambers 7.62x39 rounds."
	icon_state = "vz58"
	item_state = "vz58"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = /obj/item/ammo_magazine/c762x39m
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2
	fire_delay = 1.7
	bayonet_type = /obj/item/weapon/material/knife/bayonet/csla/
	bayonet_attachable = 1
	slowdown_general = 0.45

	wielded_item_state = "vz58-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=1, move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null, automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=1, move_delay=1,   one_hand_penalty=3,  burst_accuracy=null,              dispersion=list(0.3, 0.6), automatic = 0.5),
		)
/obj/item/weapon/gun/projectile/automatic/rifle/vz58/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "vz58"
	else
		icon_state = "vz58-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/vz58/black
	desc = "A standard-issue CSLA combat rifle with a black kit and folding stock. Chambers 7.62x39"
	icon_state = "vz_black_stock"

/obj/item/weapon/gun/projectile/automatic/rifle/vz58/black/update_icon()
	..()

	if(ammo_magazine)
		icon_state = "vz_black_stock"
	else
		icon_state = "vz_black_stock-empty"


/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl
	name = "Vz.58"
	desc = "A standard-issue CSLA combat rifle with a GP-25 attached."
	icon_state = "vz58gl"
	item_state = "vz58gl"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = /obj/item/ammo_magazine/c762x39m
	magazine_type = null
	one_hand_penalty = 3
	accuracy = 2
	fire_delay = 1.7
	jam_chance = 1
	slowdown_general = 0.5

	wielded_item_state = "vz58gl-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'

	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/gp25/launcher//19.09.17 replace with so retarded gp-70

	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=1, move_delay=null, one_hand_penalty=4, burst_accuracy=null,              dispersion=null, automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=1, move_delay=1,   one_hand_penalty=3,  burst_accuracy=null,              dispersion=list(0.3, 0.6), automatic = 0,7),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//launcher.load check it for it's type and handles all another things so don't worry
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //do we need it? :wha:
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "vz58gl"
	else
		icon_state = "vz58gl-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/verb/set_gp()
	set name = "Grenade launcher"
	set category = "Object"
	set src in usr
	set popup_menu = 0

	if(usr.get_active_hand() == src)
		if(launcher)
			use_launcher = !use_launcher
			if(do_after(usr, 1, src))
				to_chat(usr, "<span class='notice'>You [use_launcher ? "prepare the [launcher.name]." : " take your gun back."]</span>")
				if (use_launcher)
					usr.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")
				else
					usr.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
				playsound(src, 'sound/weapons/gunporn/m203_select.wav', 50, 1)
	else
		to_chat(usr, "\red You should be holding weapon in active hand to do this!")

/obj/item/weapon/gun/projectile/automatic/rifle/vz58gl/pickup(mob/user)
	..()
	if(!safety)
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
		if (use_launcher)
			spawn(1)
				user.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")

/obj/item/weapon/gun/projectile/automatic/rifle/mpikms
	name = "MPi-KmS"
	desc = "That's an outdated rifle used by NVA DDR. Chambers 7.62x39 rounds."
	icon_state = "mpikms"
	item_state = "mpi"
	w_class = 4
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = list(/obj/item/ammo_magazine/c762x39m, /obj/item/ammo_magazine/c762x39b)
//	magazine_type = /obj/item/ammo_magazine/c762x39m
	one_hand_penalty = 2
	accuracy = 2.5
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h3/ddr/
	bayonet_attachable = 1
	jam_chance = 1
	slowdown_general = 0.45

	wielded_item_state = "mpi-wielded"
	fire_sound = 'sound/weapons/gunshot/akm.ogg'
	unload_sound = 'sound/weapons/gunporn/ak47_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak47_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak47_boltback.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",     burst=1, fire_delay=0.7,  move_delay=1,    one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.1),                     automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/mpikms/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "mpikms"
		wielded_item_state = "mpi-wielded"
	else
		icon_state = "mpikms-empty"
		wielded_item_state = "mpi-wielded-empty"

	src.toggle_scope(usr, 0.9)

/obj/item/weapon/gun/projectile/automatic/rifle/mpikm
	name = "MPi-KM"
	desc = "That's an outdated rifle used by NVA DDR. Chambers 7.62x39 rounds."
	icon_state = "mpikm"
	item_state = "mpi"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = list(/obj/item/ammo_magazine/c762x39m, /obj/item/ammo_magazine/c762x39b)
//	magazine_type = /obj/item/ammo_magazine/c762x39m
	one_hand_penalty = 5
	accuracy = 2
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h3/ddr/
	bayonet_attachable = 1
	jam_chance = 1
	slowdown_general = 0.45

	wielded_item_state = "mpi-wielded"
	fire_sound = 'sound/weapons/gunshot/ak47.ogg'
	unload_sound = 'sound/weapons/gunporn/ak47_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak47_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak47_boltback.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",     burst=1, fire_delay=0.7,  move_delay=1,    one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.1),                     automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/mpikm/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "mpikm"
		wielded_item_state = "mpi-wielded"
	else
		icon_state = "mpikm-empty"
		wielded_item_state = "mpi-wielded-empty"


/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl
	name = "MPi-KM"
	desc = "That's an outdated rifle used by NVA DDR. There's a GP-25 attached to it. Chambers 7.62x39 rounds."
	icon_state = "mpikm"
	item_state = "mpi"
	w_class = 5
	load_method = MAGAZINE
	caliber = "762x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762x39
	allowed_magazines = list(/obj/item/ammo_magazine/c762x39m, /obj/item/ammo_magazine/c762x39b)
//	magazine_type = /obj/item/ammo_magazine/c762x39m
	one_hand_penalty = 5
	accuracy = 2
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h3/ddr/
	bayonet_attachable = 1
	jam_chance = 1
	slowdown_general = 0.45

	wielded_item_state = "mpi-wielded"
	fire_sound = 'sound/weapons/gunshot/ak47.ogg'
	unload_sound = 'sound/weapons/gunporn/ak47_magout.wav'
	reload_sound = 'sound/weapons/gunporn/ak47_magin.wav'
	cocked_sound = 'sound/weapons/gunporn/ak47_boltback.wav'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",     burst=1, fire_delay=0.7,  move_delay=1,    one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.1),                     automatic = 0.7),
		)
	var/use_launcher = FALSE
	var/obj/item/weapon/gun/launcher/grenade/underslung/gp25/launcher

/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "mpikmgp"
		wielded_item_state = "mpi-wielded"
	else
		icon_state = "mpikmgp-empty"
		wielded_item_state = "mpi-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))//load check it for it's type
		playsound(src, 'sound/weapons/gunporn/m203_insertgrenade.wav', 50, 1)
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		playsound(src, 'sound/weapons/gunporn/m203_openbarrel.wav', 50, 1)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
			playsound(src, 'sound/weapons/gunporn/m203_empty.wav', 50, 1)
	else
		..()


/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/verb/set_gp()
	set name = "Grenade Launcher"
	set category = "Object"
	set src in usr

	if(usr.get_active_hand() == src)
		if(launcher)
			use_launcher = !use_launcher
			if(do_after(usr, 1, src))
				to_chat(usr, "<span class='notice'>You [use_launcher ? "prepare the [launcher.name]." : " take your gun back."]</span>")
				if (use_launcher)
					usr.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")
				else
					usr.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
				playsound(src, 'sound/weapons/gunporn/m203_select.wav', 50, 1)
	else
		to_chat(usr, "\red You should be holding weapon in active hand to do this!")

/obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl/pickup(mob/user)
	..()
	if(!safety)
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
		if (use_launcher)
			spawn(1)
				user.client.mouse_pointer_icon = file("icons/misc/grenade_pointer.dmi")

/obj/item/weapon/gun/projectile/automatic/rifle/mpiak74n
	name = "MPi-AK-74N"
	desc = "A standard-issue NVA DDR rifle. Chambers 5.45x39 rounds."
	icon_state = "mpik74"
	item_state = "mpik74"
	w_class = 5
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = list(/obj/item/ammo_magazine/c545x39m, /obj/item/ammo_magazine/c545x39b)
	magazine_type = null
	one_hand_penalty = 5
	accuracy = 2.5
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h4/ddr/
	bayonet_attachable = 1
	jam_chance = 2
	slowdown_general = 0.45

	wielded_item_state = "mpik74-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",     burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",    burst=1, fire_delay=0.5,  move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.2),                     automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/mpiak74n/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "mpik74"
		item_state = "mpik74"
		wielded_item_state = "mpik74-wielded"
	else
		icon_state = "mpik74-empty"
		item_state = "mpik74-empty"
		wielded_item_state = "mpik74-wielded-empty"

/obj/item/weapon/gun/projectile/automatic/rifle/mpiaks74n
	name = "MPi-AKS-74N"
	desc = "A lighter version of the standard-issue NVA DDR rifle. Chambers 5.45x39 rounds."
	icon_state = "mpik74s"
	item_state = "aks"
	w_class = 4
	load_method = MAGAZINE
	caliber = "545x39"
	slot_flags = SLOT_BACK_GUN | SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a545x39
	allowed_magazines = /obj/item/ammo_magazine/c545x39m
	magazine_type = /obj/item/ammo_magazine/c545x39m
	one_hand_penalty = 2
	accuracy = 2.5
	fire_delay = 2
	bayonet_type = /obj/item/weapon/material/knife/bayonet/sa/a6h4/ddr/
	bayonet_attachable = 1
	jam_chance = 2
	slowdown_general = 0.45

	wielded_item_state = "aks-wielded"
	fire_sound = 'sound/weapons/gunshot/ak74.ogg'
	unload_sound = 'sound/weapons/gunporn/ak74_magout.ogg'
	reload_sound = 'sound/weapons/gunporn/ak74_magin.ogg'
	cocked_sound = 'sound/weapons/gunporn/ak74_cock.ogg'
	dist_shot_sound = 'sound/weapons/gunshot/dist/ak_dist.wav'
	firemodes = list(
		list(mode_name="semiauto",      burst=1, fire_delay=2,    move_delay=null, one_hand_penalty=2, burst_accuracy=null,              dispersion=null,                          automatic = 0),
		list(mode_name="automatic",     burst=1, fire_delay=0.7,  move_delay=1,    one_hand_penalty=2, burst_accuracy=null,              dispersion=list(0.1),                     automatic = 0.7),
		)

/obj/item/weapon/gun/projectile/automatic/rifle/mpiaks74n/update_icon()
	..()
	update_held_icon()
	if(ammo_magazine)
		icon_state = "mpik74s"
		wielded_item_state = "aks-wielded"
	else
		icon_state = "mpik74s-empty"
		wielded_item_state = "aks-wielded-empty"