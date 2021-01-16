//Cold war stuff

//Rifle caliber

/obj/item/projectile/bullet/rifle/a762x39
	armor_penetration = 10
	penetration_modifier = 0.4
	embed = 1
	kill_count = 120
	agony = 30

	New()
		damage = rand(35,40)
		penetrating = rand(0, 1)

/obj/item/projectile/bullet/rifle/a762x39/ap
	armor_penetration = 20
	penetration_modifier = 0.4


/obj/item/projectile/bullet/rifle/a762x51
	penetrating = 1
	armor_penetration = 25
	penetration_modifier = 0.5
	embed = 1
	kill_count = 55
	agony = 20

	New()
		damage = rand(25,55)

/obj/item/projectile/bullet/rifle/a762x51/ap
	armor_penetration = 30
	sharp = 0

/obj/item/projectile/bullet/rifle/a762x54
	penetrating = 1
	armor_penetration = 25
	penetration_modifier = 0.5
	embed = 1
	kill_count = 55
	agony = 20

	New()
		damage = rand(25,55)

/obj/item/projectile/bullet/rifle/a762x54/ap
	armor_penetration = 30
	sharp = 0

/obj/item/projectile/bullet/rifle/a545x39
	armor_penetration = 10
	penetration_modifier = 0.3
	embed = 1
	kill_count = 120
	agony = 30

	New()
		damage = rand(30,50)
		penetrating = rand(0, 1)

/obj/item/projectile/bullet/rifle/a545x39/ap
	armor_penetration = 20
	penetration_modifier = 0.4


/obj/item/projectile/bullet/rifle/a556x45
	armor_penetration = 20
	penetration_modifier = 0.3
	embed = 1
	kill_count = 120
	agony = 30

	New()
		damage = rand(30,40)
		penetrating = rand(0, 1)

/obj/item/projectile/bullet/rifle/a556x45/ap
	armor_penetration = 35
	penetration_modifier = 0.4

//Pistol caliber

/obj/item/projectile/bullet/rifle/a9x19
	armor_penetration = 0
	penetration_modifier = 0.1
	agony = 15

	New()
		damage = rand(15, 30)
		penetrating = rand(0,1)

/obj/item/projectile/bullet/rifle/a9x19/ap
	armor_penetration = 10

/obj/item/projectile/bullet/rifle/a9x18
	armor_penetration = 0
	penetration_modifier = 0.1
	agony = 15

	New()
		damage = rand(15, 30)
		penetrating = rand(0,1)


/obj/item/projectile/bullet/rifle/a9x18/ap
	armor_penetration = 10

/obj/item/projectile/bullet/rifle/a4mm
//	fire_sound = 'sound/weapons/minigun_1sec.ogg'
	damage = 15
	armor_penetration = 15
	kill_count = 30

/obj/item/projectile/bullet/rifle/a127x99mm
//	fire_sound = 'sound/weapons/gunshot/heavy_mg/kord1.ogg'
	damage = 40
	armor_penetration = 15
	penetrating = 3

/obj/item/projectile/bullet/rifle/a50cal
//	fire_sound = 'sound/weapons/gunshot/heavy_mg/kord1.ogg'
	damage = 40
	armor_penetration = 15
	penetrating = 3

/obj/item/projectile/bullet/ags30x29mm
	name = "AGS' bullet"
	icon_state = "vog"
	damage = 90
	penetrating = 0
	step_delay = 1.2
//	impact_force = 1
	kill_count = 60
	fire_sound = null//here we gonna use sound in AGS and not in bullets

//proc/explosion(turf/epicenter, devastation_range, heavy_impact_range, light_impact_range, flash_range, adminlog = 1, z_transfer = UP|DOWN, shaped)
/obj/item/projectile/bullet/ags30x29mm/on_impact(var/atom/target, var/blocked = 0)
	explosion(target, 0, 1, 3, 4)

/obj/item/projectile/bullet/ags30x29mm/pow
	damage = 110
	agony = 20
	armor_penetration = 1
	step_delay = 1.2
	penetrating = 0
	kill_count = 70

/obj/item/projectile/bullet/ags30x29mm/pow/on_impact(var/atom/target, var/blocked = 0)
	explosion(target, 0, 2, 3, 4)

/obj/item/projectile/bullet/mk19_40x53mm
	name = "MK19' bullet"
	icon_state = "vog" ////////fix
	damage = 100
	penetrating = 0
	step_delay = 1.2
//	impact_force = 1
	kill_count = 60

/obj/item/projectile/bullet/mk19_40x53mm/on_impact(var/atom/target, blocked = 0)
	explosion(target, 0, 1, 5, 6)//a little bit explosive that 30x29


/obj/item/projectile/bullet/mk19_40x53mm/pow
	damage = 120
	armor_penetration = 1
	step_delay = 1.2
//	impact_force = 1
	penetrating = 0
	kill_count = 70

/obj/item/projectile/bullet/mk19_40x53mm/on_impact(var/atom/target, blocked = 0)
	explosion(target, 0, 1, 4, 5)

/obj/item/projectile/bullet/rgprocket
	name = "rpg shell"
	icon_state = "rocket"
	damage = 100
	step_delay = 1
//	impact_force = 1
	penetrating = 0
	kill_count = 40
	fire_sound = null//here we gonna use sound in AGS and not in bullets

	muzzle_type = /obj/effect/projectile/rocket/rpg
	breech_type = /obj/effect/projectile/rocket/rpg/breech

/obj/item/projectile/bullet/rgprocket/muzzle_effect(var/matrix/T)
	if(silenced)
		return

	if(ispath(muzzle_type))
		var/obj/effect/projectile/M = new muzzle_type(get_turf(src))

		if(istype(M))
			M.set_transform(T)
			M.pixel_x = location.pixel_x
			M.pixel_y = location.pixel_y
			M.activate()

	if(ispath(breech_type))
		var/obj/effect/projectile/M1 = new breech_type(get_turf(src))

		if(istype(M1))
			M1.set_transform(T)
			M1.pixel_x = -location.pixel_x
			M1.pixel_y = -location.pixel_y
			M1.activate()

/obj/item/projectile/bullet/rgprocket/on_impact(var/atom/target, var/blocked = 0)
	explosion(target, 1, 3, 5)

/obj/item/projectile/bullet/rgprocket/he
	penetrating = 0

/obj/item/projectile/bullet/rgprocket/he/on_impact(var/atom/target, var/blocked = 0)
	explosion(target, 1, 3, 5, 6)