/obj/item/weapon/gun/projectile/rifle/boltaction
	name = "bolt action rifle"
	desc = "SET DESC HERE. Uses 7.62x51 ammo."
	icon_state = "huntrifle"
	item_state = "arifle-empty" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	caliber = "7.62x51"
	wielded_item_state = "huntrifle2"
	screen_shake = 2 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	ammo_type = /obj/item/ammo_casing/rifle/a762x51
	one_hand_penalty = 5
	accuracy = 5
	var/bolt_open = 0
	wielded_item_state = "gun_wielded" //sort of placeholder
	picksound = 'sound/items/interactions/rifle_draw.wav'
	reload_sound = 'sound/weapons/gunhandling/brifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/brifle_cock.wav'
	jam_chance = 0.2
	jam_chance = 20

/obj/item/weapon/gun/projectile/rifle/boltaction/update_icon()
	..()
	if(bolt_open  && w_class == ITEM_SIZE_HUGE)
		icon_state = "huntrifle"
	else if(!bolt_open && w_class == ITEM_SIZE_HUGE)
		icon_state = "huntrifle"
	else if(bolt_open)
		icon_state = "huntrifle-sawn"
	else
		icon_state = "huntrifle-sawn"

/obj/item/weapon/gun/projectile/rifle/boltaction/attack_self(mob/user as mob)
	bolt_open = !bolt_open
	if(bolt_open)
		playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltback.wav', 50, 1)
		if(chambered)
			to_chat(user, "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>")
			chambered.loc = get_turf(src)
			loaded -= chambered
			chambered = null
		else
			to_chat(user, "<span class='notice'>You work the bolt open.</span>")
	else
		to_chat(user, "<span class='notice'>You work the bolt closed.</span>")
		playsound(src.loc, 'sound/weapons/gunhandling/brifle_boltforward.wav', 50, 1)
		bolt_open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/rifle/boltaction/special_check(mob/user)
	if(bolt_open)
		to_chat(user, "<span class='warning'>You can't fire [src] while the bolt is open!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/rifle/boltaction/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/rifle/boltaction/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/rifle/boltaction/attackby(var/obj/item/A as obj, mob/user as mob)
	if(w_class > 3 && (istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/melee/energy) || istype(A, /obj/item/weapon/pickaxe/plasmacutter)))
		to_chat(user, "<span class='notice'>You begin to shorten the barrel of \the [src].</span>")
		if(loaded.len)
			for(var/i in 1 to max_shells)
				Fire(user, user)	//will this work? //it will. we call it twice, for twice the FUN
			user.visible_message("<span class='danger'>The shotgun goes off!</span>", "<span class='danger'>The shotgun goes off in your face!</span>")
			return
		if(do_after(user, 30, src))	//SHIT IS STEALTHY EYYYYY
			icon_state = "huntrifle-sawn"
			w_class = ITEM_SIZE_NORMAL
			force = 5
			one_hand_penalty = 1
			slot_flags &= ~SLOT_BACK	//you can't sling it on your back
			slot_flags |= (SLOT_BELT|SLOT_HOLSTER) //but you can wear it on your belt (poorly concealed under a trenchcoat, ideally) - or in a holster, why not.
			name = "sawn-off bolt action rifle"
			to_chat(user, "<span class='warning'>You shorten the barrel of \the [src]!</span>")
	else
		..()

/obj/item/weapon/gun/projectile/rifle/boltaction/sawn
	name = "sawn-off bolt action rifle"
	slot_flags = SLOT_BELT|SLOT_HOLSTER //but you can wear it on your belt (poorly concealed under a trenchcoat, ideally) - or in a holster, why not.
	item_state = "huntrifle-sawn"
	w_class = ITEM_SIZE_NORMAL
	icon_state = "huntrifle-sawn"
	force = 5
	one_hand_penalty = 0

/obj/item/weapon/gun/projectile/rifle
	name = "self-loading rifle"
	desc = "SET DESC HERE. Uses 7.62x51 ammo."
	icon_state = "762ebr"
	item_state = "arifle-empty" //sort of placeholder
	w_class = ITEM_SIZE_HUGE
	wielded_item_state = "rifle2"
	force = 10
	slot_flags = SLOT_BACK
	caliber = "7.62x51"
	screen_shake = 2 //extra kickback
	load_method = MAGAZINE
	max_shells = 10
	one_hand_penalty = 3
	accuracy = 2
	wielded_item_state = "gun_wielded" //sort of placeholder
	picksound = 'sound/items/interactions/rifle_draw.wav'
	magazine_type = /obj/item/ammo_magazine/a762x51smag
	allowed_magazines =/obj/item/ammo_magazine/a762x51smag //more damage compared to the wt550, smaller mag size
	unload_sound = 'sound/weapons/gunhandling/rifle_magout.wav'
	reload_sound = 'sound/weapons/gunhandling/rifle_magin.wav'
	cocked_sound = 'sound/weapons/gunhandling/rifle_boltback.wav'
	jam_chance = 20

/obj/item/weapon/gun/projectile/rifle/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "762ebr"
	else
		icon_state = "762ebr-empty"