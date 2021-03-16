/obj/item/ammo_magazine/a357
	//name = "ammo box (.357)"
	//desc = "A box of .357 ammo"
	//icon_state = "357"
	name = "speed loader (.357)"
	icon_state = "38"
	caliber = "357"
	ammo_type = /obj/item/ammo_casing/a357
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c38
	name = "speed loader (.38)"
	icon_state = "38"
	caliber = "38"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/c38
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c38/rubber
	name = "speed loader (.38 rubber)"
	ammo_type = /obj/item/ammo_casing/c38/rubber

/obj/item/ammo_magazine/c45m
	name = "magazine (.45)"
	icon_state = "45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c45
	matter = list(DEFAULT_WALL_MATERIAL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = ".45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/c45m/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c45m/rubber
	name = "magazine (.45 rubber)"
	ammo_type = /obj/item/ammo_casing/c45/rubber

/obj/item/ammo_magazine/c45m/practice
	name = "magazine (.45 practice)"
	ammo_type = /obj/item/ammo_casing/c45/practice

/obj/item/ammo_magazine/c45m/flash
	name = "magazine (.45 flash)"
	ammo_type = /obj/item/ammo_casing/c45/flash

/obj/item/ammo_magazine/c45uzi
	name = "stick magazine (.45)"
	icon_state = "uzi45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c45
	matter = list(DEFAULT_WALL_MATERIAL = 1200)
	caliber = ".45"
	max_ammo = 16
	multiple_sprites = 1

/obj/item/ammo_magazine/c45uzi/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm
	name = "magazine (9mm)"
	icon_state = "9x19p"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	matter = list(DEFAULT_WALL_MATERIAL = 600)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm/flash
	name = "magazine (9mm flash)"
	ammo_type = /obj/item/ammo_casing/c9mm/flash

/obj/item/ammo_magazine/box
	var/loading = 0

/obj/item/ammo_magazine/box/c9mm
	name = "ammunition box (9mm)"
	icon_state = "9mm"
	origin_tech = list(TECH_COMBAT = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 30

/obj/item/ammo_magazine/box/c9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/emp
	name = "ammunition box (.38 haywire)"
	icon_state = "empbox"
	origin_tech = list(TECH_COMBAT = 2)
	max_ammo = 10
	ammo_type = /obj/item/ammo_casing/c38/emp
	caliber = ".38"

/obj/item/ammo_magazine/box/emp/c45
	name = "ammunition box (.45 haywire)"
	ammo_type = /obj/item/ammo_casing/c45/emp
	caliber = ".45"

/obj/item/ammo_magazine/box/emp/a10mm
	name = "ammunition box (10mm haywire)"
	ammo_type = /obj/item/ammo_casing/a10mm/emp
	caliber = "10mm"

/obj/item/ammo_magazine/mc9mmt
	name = "top mounted magazine (9mm)"
	icon_state = "9mmt"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c9mm
	matter = list(DEFAULT_WALL_MATERIAL = 1200)
	caliber = "9mm"
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mmt/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mmt/rubber
	name = "top mounted magazine (9mm rubber)"
	ammo_type = /obj/item/ammo_casing/c9mm/rubber

/obj/item/ammo_magazine/mc9mmt/practice
	name = "top mounted magazine (9mm practice)"
	ammo_type = /obj/item/ammo_casing/c9mm/practice

/obj/item/ammo_magazine/box/c45
	name = "ammunition box (.45)"
	icon_state = "9mm"
	origin_tech = list(TECH_COMBAT = 2)
	caliber = ".45"
	matter = list(DEFAULT_WALL_MATERIAL = 2250)
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 30

/obj/item/ammo_magazine/box/c45/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a10mm
	name = "magazine (10mm)"
	icon_state = "10mm"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "10mm"
	matter = list(DEFAULT_WALL_MATERIAL = 1500)
	ammo_type = /obj/item/ammo_casing/a10mm
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/a10mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a556
	name = "magazine (5.56mm)"
	icon_state = "5.56"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "a556"
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 15 //if we lived in a world where normal mags had 30 rounds, this would be a 20 round mag
	multiple_sprites = 1

/obj/item/ammo_magazine/a556/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a556/practice
	name = "magazine (5.56mm practice)"
	ammo_type = /obj/item/ammo_casing/a556/practice

/obj/item/ammo_magazine/a50
	name = "magazine (.50)"
	icon_state = "50ae"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".50"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/a50
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/a50/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a75
	name = "ammo magazine (20mm)"
	icon_state = "75"
	mag_type = MAGAZINE
	caliber = "75"
	ammo_type = /obj/item/ammo_casing/a75
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/a75/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/a762
	name = "magazine box (7.62mm)"
	icon_state = "a762"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "a762"
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/box/a762/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c762
	name = "magazine (7.62mm)"
	icon_state = "c762"
	mag_type = MAGAZINE
	caliber = "a762"
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	icon_state = "T38"
	caliber = "caps"
	color = "#ff0000"
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(DEFAULT_WALL_MATERIAL = 600)
	max_ammo = 7
	multiple_sprites = 1


//redline shit

/obj/item/ammo_magazine/a556x45rifle
	name = "magazine (5.56x45mm)"
	icon_state = "rifle556mag"
	mag_type = MAGAZINE
	caliber = "5.56x45"
	ammo_type = /obj/item/ammo_casing/rifle/a556x45
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/a556x45rifle/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/clip/a762x51
	name = "bullet clip (7.62x51mm)"
	icon_state = "clip_rifle"
	caliber = "7.62x51"
	ammo_type = /obj/item/ammo_casing/rifle/a762x51
	max_ammo = 5
	multiple_sprites = 1

/obj/item/ammo_magazine/box/clip/a762x51/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a762x51smag
	name = "magazine (7.62x51mm)"
	icon_state = "762rifle"
	caliber = "7.62x51"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/rifle/a762x51
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/a762x51smag/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a22lrsmg
	name = "magazine (.22LR)"
	icon_state = "22lrsmg"
	caliber = ".22lr"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/a22lr
	max_ammo = 30
	multiple_sprites = 1

/obj/item/ammo_magazine/a22lrsmg/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a40smg
	name = "magazine (.40)"
	icon_state = "40smgmag"
	caliber = ".40"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/a40sw
	max_ammo = 21
	multiple_sprites = 1

/obj/item/ammo_magazine/a40smg/empty
	initial_ammo = 0


/obj/item/ammo_magazine/a9mmpistol
	name = "magazine (9x19mm)"
	icon_state = "9mmpistol"
	caliber = "9x19"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/a9mm
	max_ammo = 12
	multiple_sprites = 1

/obj/item/ammo_magazine/a9mmpistol/empty
	initial_ammo = 0


/obj/item/ammo_magazine/a40pistol
	name = "magazine (.40)"
	icon_state = "40pistol"
	caliber = ".40"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/a40sw
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_magazine/a40pistol/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c32
	name = "speed loader (.32)"
	icon_state = "38"
	caliber = ".32"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/pistol/a32sw
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/c44
	name = "speed loader (.44)"
	icon_state = "38"
	caliber = ".44"
	matter = list(DEFAULT_WALL_MATERIAL = 720)
	ammo_type = /obj/item/ammo_casing/pistol/a44sw
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c44/empty
	initial_ammo = 0


/obj/item/ammo_magazine/a762x51bmag
	name = "disc magazine (7.62x51mm)"
	icon_state = "DTmag"
	caliber = "7.62x51"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/rifle/a762x51
	max_ammo = 49
	multiple_sprites = 1


/obj/item/ammo_magazine/a762x51bmag/empty
	initial_ammo = 0


//ammo boxes

/obj/item/ammo_magazine/box/paper
	name = "paper ammo box"
	icon_state = "ammobox"
	w_class = ITEM_SIZE_SMALL
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 30
	multiple_sprites = 1
	mag_type = AMMO_BOX

/obj/item/ammo_magazine/box/paper/x762
	name = "paper ammo box (7.62x51)"
	caliber = "7.62x51"
	ammo_type = /obj/item/ammo_casing/rifle/a762x51
	max_ammo = 20

/obj/item/ammo_magazine/box/paper/x556
	name = "paper ammo box (5.56x45)"
	caliber = "5.56x45"
	ammo_type = /obj/item/ammo_casing/rifle/a556x45

/obj/item/ammo_magazine/box/paper/x40
	name = "paper ammo box (.40)"
	caliber = ".40"
	ammo_type = /obj/item/ammo_casing/pistol/a40sw
	max_ammo = 25

/obj/item/ammo_magazine/box/paper/x44
	name = "paper ammo box (.44)"
	caliber = ".44"
	ammo_type = /obj/item/ammo_casing/pistol/a44sw
	max_ammo = 25

/obj/item/ammo_magazine/box/paper/x32
	name = "paper ammo box (.32)"
	caliber = ".32"
	ammo_type = /obj/item/ammo_casing/pistol/a32sw
	max_ammo = 30

/obj/item/ammo_magazine/box/paper/x9
	name = "paper ammo box (.9x19)"
	caliber = "9x19"
	ammo_type = /obj/item/ammo_casing/pistol/a9mm
	max_ammo = 30

/obj/item/ammo_magazine/box/paper/x22
	name = "paper ammo box (.22 LR)"
	caliber = ".22"
	ammo_type = /obj/item/ammo_casing/pistol/a22lr
	max_ammo = 40

////////////ammo cans

/obj/item/weapon/storage/fancy/ammo_can
	icon = 'icons/obj/ammocan.dmi'
	icon_state = "ammocan"
	name = "ammo can"
	storage_slots = 10
	max_w_class = ITEM_SIZE_SMALL
	w_class = ITEM_SIZE_GARGANTUAN
	key_type = /obj/item/ammo_magazine/box
	icon_state = "ammocan"

/obj/item/weapon/storage/fancy/ammo_can/soviet/
	var/sealed = 1

/obj/item/weapon/storage/fancy/ammo_can/soviet/attack_hand(mob/user as mob)
	return

/obj/item/weapon/storage/fancy/ammo_can/soviet/MouseDrop()
	if (sealed)
		return
	..()

/obj/item/weapon/storage/fancy/ammo_can/soviet/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(sealed)
		if (istype(W, /obj/item/weapon/material/knife) && do_after(user, rand(10,40), src))
			sealed = 0
			playsound(src.loc, 'sound/weapons/gunhandling/unjam.ogg', 50, 1)
			user.visible_message("[user] opens the [src].", "<span class='notice'>You open the [src].</span>")
			if(ishuman(user))
				var/mob/living/carbon/human/H = user
				if (prob (33))
					var/obj/item/organ/external/affecting = H.get_organ(pick("l_hand", "r_hand", "l_arm", "r_arm"))
					if(affecting.take_damage(5, 0))
						H.UpdateDamageIcon()
					H.updatehealth()
					to_chat(user, "\red <B>Your [affecting.name] gets slightly cut while opening [src]!</B>")
					return ..()


/obj/item/weapon/storage/fancy/ammo_can/soviet/update_icon()
	if(sealed)
		src.icon_state = initial(icon_state)
	else if (contents.len)
		src.icon_state = "[initial(icon_state)]-open"
	else
		src.icon_state = "[initial(icon_state)]-empty"


/obj/item/weapon/storage/fancy/ammo_can/soviet/x762x54
	name = "ammo can (7.62x54mm)"
	icon_state = "ammocan762lps"
	startswith = list(
		/obj/item/ammo_magazine/box/paper/box762x54 = 11
		)

/obj/item/weapon/storage/fancy/ammo_can/soviet/x54539
	name = "ammo can (5.45x39mm)"
	storage_slots = 27
	can_hold = null
	icon_state = "ammocan545ps"
	startswith = list(
		/obj/item/ammo_magazine/box/paper/box545x39 = 27
		)

/obj/item/weapon/storage/fancy/ammo_can/soviet/x76239
	name = "ammo can (7.62x39mm)"
	icon_state = "ammocan762ps"
	startswith = list(
		/obj/item/ammo_magazine/box/paper/box762x39 = 17
		)

/obj/item/weapon/storage/fancy/ammo_can/x762
	name = "ammo box (7.62x51mm)"
	icon_state = "ammocannato"
	startswith = list(
		/obj/item/ammo_magazine/box/paper/box762x51 = 6
		)

/obj/item/weapon/storage/fancy/ammo_can/x556
	name = "ammo box (5.56x45mm)"
	icon_state = "ammocannato"
	startswith = list(
		/obj/item/ammo_magazine/box/paper/box556x45 = 8
		)

/obj/item/weapon/storage/fancy/ammo_can/attack_hand(mob/user as mob)
	return