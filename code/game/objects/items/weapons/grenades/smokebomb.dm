/obj/item/weapon/grenade/smokebomb
	desc = "It is set to detonate in 2 seconds."
	name = "smoke bomb"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "flashbang"
	det_time = 20
	item_state = "flashbang"
	slot_flags = SLOT_BELT
	var/datum/effect/effect/system/smoke_spread/bad/smoke

/obj/item/weapon/grenade/smokebomb/New()
	..()
	src.smoke = new /datum/effect/effect/system/smoke_spread/bad()
	src.smoke.attach(src)

/obj/item/weapon/grenade/smokebomb/Destroy()
	qdel(smoke)
	smoke = null
	return ..()

/obj/item/weapon/grenade/smokebomb/detonate()
	playsound(src.loc, 'sound/effects/smoke.ogg', 50, 1, -3)
	src.smoke.set_up(10, 0, usr.loc)
	spawn(0)
		src.smoke.start()
		sleep(10)
		src.smoke.start()
		sleep(10)
		src.smoke.start()
		sleep(10)
		src.smoke.start()

	for(var/obj/effect/blob/B in view(8,src))
		var/damage = round(30/(get_dist(B,src)+1))
		B.health -= damage
		B.update_icon()
	sleep(80)
	qdel(src)
	return

/obj/item/weapon/grenade/smokebomb/nato
	name = "M18 smoke grenade"
	desc = "It is set to detonate in 2 seconds."
	icon_state = "m18"
	throw_speed = 4
	throw_range = 16

/obj/item/weapon/grenade/smokebomb/wp
	name = "RDG2 smoke grenade"
	desc = "It is set to detonate in 2 seconds."
	icon_state = "rdg2"
	throw_speed = 4
	throw_range = 16

/obj/item/weapon/grenade/tear
	desc = "It is set to detonate in 4 seconds."
	name = "tear gas grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "flashbang"
	det_time = 15
	item_state = "flashbang"
	slot_flags = SLOT_BELT
	var/datum/effect/effect/system/smoke_spread/tear/smoke

/obj/item/weapon/grenade/tear/New()
	..()
	src.smoke = new /datum/effect/effect/system/smoke_spread/tear()
	src.smoke.attach(src)

/obj/item/weapon/grenade/tear/Destroy()
	qdel(smoke)
	smoke = null
	return ..()

/obj/item/weapon/grenade/tear/detonate()
	playsound(src.loc, 'sound/effects/smoke.ogg', 50, 1, -3)
	src.smoke.set_up(10, 0, usr.loc)
	spawn(0)
		src.smoke.start()
		sleep(10)
		src.smoke.start()
		sleep(10)
		src.smoke.start()
		sleep(10)
		src.smoke.start()

	for(var/obj/effect/blob/B in view(8,src))
		var/damage = round(30/(get_dist(B,src)+1))
		B.health -= damage
		B.update_icon()
	sleep(80)
	qdel(src)
	return

