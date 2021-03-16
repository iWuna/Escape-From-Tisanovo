#define NODERANGE 3

/obj/structure/corruption
	name = "flesh mess"
	icon = 'icons/turf/corruption.dmi'
	icon_state = "corruption-1"
	desc = "What the hell is this?"
	density = 0
	layer = TURF_LAYER + 0.5
	anchored = TRUE
	var/health = 100
	var/maxhealth = 100
	var/last_expand = 0 //last world.time this weed expanded
	var/growth_cooldown_low = 150
	var/growth_cooldown_high = 200
	var/static/list/blacklisted_turfs = typecacheof(list(/turf/space, /turf/simulated/wall))

/obj/structure/corruption/node
	var/node_range = NODERANGE

/obj/structure/corruption/node/New()
	..()
	icon_state = "node-[rand(1,3)]"
	var/obj/structure/corruption/W = locate(/obj/structure/corruption) in loc
	if(W && W != src)
		qdel(W)
//	GLOB.processing_objects.Add(src)

/obj/structure/corruption/node/Destroy()
//	GLOB.processing_objects.Remove(src)
	return ..()

/obj/structure/corruption/New()
	..()
	icon_state = "corruption-[rand(1,3)]"
	last_expand = world.time + rand(growth_cooldown_low, growth_cooldown_high)

/obj/structure/corruption/Crossed(AM as mob|obj)
	. = ..()
	if(ismob(AM))
		var/mob/M = AM
		if(ishuman(M))
			playsound(src, pick('sound/effects/footsteps/corruption1.ogg', 'sound/effects/footsteps/corruption2.ogg'), 50, 1)

/obj/structure/corruption/attackby(obj/item/C as obj, mob/user as mob)
	if (istype(C, /obj/item/weapon/weldingtool))
		var/obj/item/weapon/weldingtool/WT = C
		if(WT.isOn())
			if(WT.remove_fuel(0, user))
				qdel(src)
	else
		take_damage(C.force)
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	return ..()

/obj/structure/corruption/proc/take_damage(amount)
	health -= amount
	if(health <= 0)
		Destroy()

/obj/structure/corruption/proc/expand()
	var/turf/U = get_turf(src)
	if(is_type_in_typecache(U, blacklisted_turfs))
		qdel(src)
		return FALSE

	for(var/turf/T)
		if(locate(/obj/structure/corruption) in T)
			continue
		if(is_type_in_typecache(T, blacklisted_turfs))
			continue
		new /obj/structure/corruption(T)

	return TRUE

/obj/structure/corruption/node/process()
	for(var/obj/structure/corruption/W in range(node_range, src))
		if(W.last_expand <= world.time)
			if(W.expand())
				W.last_expand = world.time + rand(growth_cooldown_low, growth_cooldown_high)