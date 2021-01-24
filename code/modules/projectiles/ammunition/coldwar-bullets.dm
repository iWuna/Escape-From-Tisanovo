
//Cold war stuff

//Rifle caliber

/obj/item/ammo_casing/a762x51
	desc = "A 7.62x51mm bullet casing."
	caliber = "762x51"
	projectile_type = /obj/item/projectile/bullet/rifle/a762x51
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a762x51/ap
	desc = "A 7.62x51mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a762x51/ap

/obj/item/ammo_casing/a762x39
	desc = "A 7.62x39mm bullet casing."
	caliber = "762x39"
	projectile_type = /obj/item/projectile/bullet/rifle/a762x39
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a762x39/ap
	desc = "A 7.62x39mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a762x39/ap

/obj/item/ammo_casing/a762x54
	desc = "A 7.62x54mm bullet casing."
	caliber = "762x54"
	projectile_type = /obj/item/projectile/bullet/rifle/a762x54
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a762x54/ap
	desc = "A 7.62x54mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a762x54/ap

/obj/item/ammo_casing/a545x39
	desc = "A 5.45x39mm bullet casing."
	caliber = "545x39"
	projectile_type = /obj/item/projectile/bullet/rifle/a545x39
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a545x39/ap
	desc = "A 5.45x39mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a545x39/ap

/obj/item/ammo_casing/a556x45
	desc = "A 5.56x45mm bullet casing."
	caliber = "556x45"
	projectile_type = /obj/item/projectile/bullet/rifle/a556x45
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a556x45/ap
	desc = "A 5.56x45mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a556x45/ap

/obj/item/ammo_casing/a9x19
	desc = "A 9x19mm bullet casing."
	caliber = "9x19"
	projectile_type = /obj/item/projectile/bullet/rifle/a9x19

/obj/item/ammo_casing/a9x19/ap
	desc = "A 9x19mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a9x19/ap

/obj/item/ammo_casing/a9x18
	desc = "A 9x18mm bullet casing."
	caliber = "9x18"
	projectile_type = /obj/item/projectile/bullet/rifle/a9x18

/obj/item/ammo_casing/a9x18/ap
	desc = "A 9x18mm AP bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a9x18/ap

/obj/item/ammo_casing/a4mm
	desc = "A 4mm bullet casing."
	caliber = "4mm"
	projectile_type = /obj/item/projectile/bullet/rifle/a4mm

/obj/item/ammo_casing/a127x99mm
	desc = "A 12.7x99mm bullet casing."
	caliber = "127x99mm"
	projectile_type = /obj/item/projectile/bullet/rifle/a127x99mm
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a50cal
	desc = "A .50 cal bullet casing."
	caliber = ".50"
	projectile_type = /obj/item/projectile/bullet/rifle/a50cal
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"


/obj/item/ammo_casing/ags30x29mm
	desc = "A 30x29mm AGS-17' VOG casing"
	caliber = "30x29mm"
	projectile_type = /obj/item/projectile/bullet/ags30x29mm
	icon_state = "vog17-casing"
	spent_icon = "vog17-casing-spent"

/obj/item/ammo_casing/ags30x29mm/shrapnel
	desc = "VOG with something like \"shrapnel\" drawn on it"
	projectile_type = /obj/item/projectile/bullet/ags30x29mm/pow

/obj/item/ammo_casing/mk19_40x53mm
	desc = "A 40x53mm MK 19 casing"
	caliber = "40x53mm"
	projectile_type = /obj/item/projectile/bullet/mk19_40x53mm
	icon_state = "vog17-casing" ////fix
	spent_icon = "vog17-casing-spent"/////fix

/obj/item/ammo_casing/mk19_40x53mm/shrapnel
	projectile_type = /obj/item/projectile/bullet/mk19_40x53mm/pow

/obj/item/ammo_casing/rpg_missile
	name = "RG-7"
	desc = "A regular morkovka for rpg"
	caliber = "7p16"
	icon_state = "rg-7"
	projectile_type = /obj/item/projectile/bullet/rgprocket
	w_class = 4
	slot_flags = null

/obj/item/ammo_casing/rpg_missile/rg7
	name = "RG-7"
	desc = "RG-7 missile. Fucking deadly, don't shoout yourself, Abu Hajaar!"
	layer = 4

/obj/item/ammo_casing/rpg_missile/og7
	name = "OG-7"
	desc = "OG-7"
	icon_state = "og-7"
	layer = 4

/obj/item/ammo_casing/oneuserocket
	name = "rocket"
	desc = "A rocket."
	projectile_type = /obj/item/projectile/bullet/rgprocket
	icon_state = null
	spent_icon = null
	w_class = 4
	slot_flags = null
	caliber = "rocketoneuse"