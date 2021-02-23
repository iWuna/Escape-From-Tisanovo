#define DMG_TYPE_GIB 1
#define DMG_TYPE_ENERGY 2
#define DMG_TYPE_BURN 4
#define DMG_TYPE_BRAIN 8
#define DMG_TYPE_RADIATION 16
#define DMG_TYPE_IGNITION 32
#define DMG_TYPE_BIO 64
#define DMG_TYPE_LASTER 128
#define RADFUCK 25
GLOBAL_LIST_EMPTY(anomalies)

/obj/anomaly
	name = "Anomaly"
	var/damage_amount = 0 				//Сколько дамажит
	var/damage_type = DMG_TYPE_ENERGY	//Тип дамага
	var/activated_icon_state = null 	//Спрайт при активации
	var/cooldown = 5
	var/lasttime = 0
	var/list/mob/living/trapped = new/list()
	var/idle_luminosity = 0
	var/activated_luminosity = 0
	var/sound = null
	var/delay = 0
	var/incooldown = 0
	//var/attachedSpawner = null
	var/active_icon_state = null
	var/inactive_icon_state = null;
	var/active_invisibility = 0
	var/inactive_invisibility = 0
	var/list/loot = list()
	var/anomaly_color = null
	var/loot_count = 1
	icon = 'icons/effects/anomalies.dmi'
	anchored = 1
	layer = ABOVE_HUMAN_LAYER
	pass_flags = PASSTABLE | PASSGRILLE

/obj/anomaly/Initialize()
	..()
	GLOB.anomalies += src
	icon_state = inactive_icon_state
	invisibility = inactive_invisibility
	set_light(idle_luminosity, l_color = anomaly_color)

/obj/anomaly/proc/RandomMove(spawned)
	if(!spawned || !istype(spawned, /obj))
		return
	var/turf/T = get_turf(src)
	if(!T)
		return
	var/obj/O = spawned
	var/new_x = T.x + rand(-1, 1)
	var/new_y = T.y + rand(-1, 1)
	O.Move(locate(new_x, new_y, T.z))

/obj/anomaly/Crossed(atom/A)
	..()
	if(lasttime + (cooldown * 10) > world.time)
		return

	if(istype(A,/obj/item/projectile))
		return

	if(istype(A,/obj/item))

		ApplyEffects()

		lasttime = world.time

		playsound(src.loc, src.sound, 50, 1, channel = 0)
		var/obj/item/I = A

		AffectItem(I)

		return

	if(istype(A,/mob/living))
		var/mob/living/L = A
		src.trapped.Add(L)
		if(src.trapped.len >= 1 && !incooldown)
			Think()
	return

/obj/anomaly/Uncrossed(atom/A)
	..()
	if(istype(A, /mob/living))
		var/mob/living/L = A
		src.trapped.Remove(L)
	return

/obj/anomaly/proc/Think()

	if(!src.trapped || src.trapped.len < 1)
		incooldown = 0
		return

	if(lasttime + (cooldown * 10) > world.time)
		addtimer(CALLBACK(src, .proc/Think), (lasttime + (cooldown * 10) - world.time))
		return

	incooldown = 1

	lasttime = world.time

	for(var/atom/A in src.trapped)

		ApplyEffects()

		////////////////////
		sleep(src.delay * 10)
		////////////////////

		if(!istype(A, /mob/living))
			trapped.Remove(A)
			continue

		var/mob/living/L = A

		if(L.stat == 2)
			src.trapped.Remove(L)
			continue

		DealDamage(L)

		///////////////////////
		sleep(src.cooldown * 10)
		///////////////////////

	if(!src.trapped || src.trapped.len < 1)
		incooldown = 0
		return

	Think()
	return

/obj/anomaly/proc/ApplyEffects()
	invisibility = active_invisibility
	flick(active_icon_state, src)
	update_icon()
	set_light(activated_luminosity, l_color = anomaly_color)
	playsound(src.loc, src.sound, 50, 1, channel = 0)

	spawn(10)
		invisibility = inactive_invisibility
		update_icon()
		set_light(idle_luminosity, l_color = anomaly_color)

	return

/obj/anomaly/proc/AffectItem(var/obj/item/I)

	I.throw_impact(get_turf(I))
	I.throwing = 0

	sleep(5)

	var/turf/T = get_turf(I)
	var/obj/effect/decal/cleanable/molten_item/Q = new /obj/effect/decal/cleanable/molten_item(T)
	Q.pixel_x = rand(-16,16)
	Q.pixel_y = rand(-16,16)
	Q.desc = "Looks like this was \an [I] some time ago."

	qdel(I)

/obj/anomaly/proc/DealDamage(var/mob/living/L)
	if(!(L in src.trapped))
		return
	if(istype(L, /mob/living/simple_animal))
		qdel(L)
		return

	lasttime = world.time

	switch(src.damage_type)
		if(DMG_TYPE_ENERGY)
			L.apply_damage(src.damage_amount, BURN, null, L.getarmor(null, "energy"))
		if(DMG_TYPE_BIO)
			L.apply_damage(src.damage_amount, BURN, null, L.getarmor(null, "bio"))
		if(DMG_TYPE_LASTER)
			L.apply_damage(src.damage_amount, BURN, null, L.getarmor(null, "laser"))
		if(DMG_TYPE_RADIATION)
			L.rad_act(src.damage_amount)
		if(DMG_TYPE_GIB)
			if(L.stat == DEAD)
				L.gib()
				trapped.Remove(L)
			else
				L.apply_damage(src.damage_amount, BRUTE, null, L.getarmor(null, "meele"))
		if(DMG_TYPE_IGNITION)
			if(istype(L, /mob/living/simple_animal/hostile))
				L.apply_damage(40, BURN, null, 0)
			else
				L.apply_damage(20, BURN, null, 0)
				//L.fire_act()
	return

/obj/anomaly/electro
	name = "anomaly"
	damage_amount = 40
	cooldown = 2
	sound = 'sound/anomalies/electra_blast1.ogg'
	idle_luminosity = 1
	activated_luminosity = 3
	anomaly_color = "#7ac8e2"
	damage_type = DMG_TYPE_ENERGY
	inactive_icon_state = "electra0"
	active_icon_state = "electra1"
	active_invisibility = 0
	inactive_invisibility = 0

/obj/anomaly/electro/Initialize()
	..()
	GLOB.processing_objects.Add(src)
	src.set_light(idle_luminosity)
	spawn(10)
		GLOB.processing_objects.Remove(src)

/obj/rad
	name = "Radiation"
	icon = 'icons/effects/anomalies.dmi'
	icon_state = "rad_low"
	var/damage_amount = 0
	var/damage_type = DMG_TYPE_RADIATION
	var/activated_icon_state = null
	var/cooldown = 2.5					//Кулдаун
	var/lasttime = 0
	var/list/mob/living/carbon/human/trapped = new/list()
	var/idle_luminosity = 0
	var/activated_luminosity = 0
	var/sound = null
	var/delay = 0
	var/attachedSpawner = null
	var/active_icon_state = null
	var/inactive_icon_state = null
	var/rt = 0
	invisibility = 101
	anchored = 1
	pass_flags = PASSTABLE | PASSGRILLE

/obj/rad/rad_low
	damage_amount = 15
	sound = 'sound/effects/geiger/geiger_1.ogg'
	icon_state = "rad_low"

/obj/rad/rad_medium
	damage_amount = 25
	sound = 'sound/effects/geiger/geiger_4.ogg'
	icon_state = "rad_medium"

/obj/rad/rad_high
	damage_amount = 40
	sound = 'sound/effects/geiger/geiger_6.ogg'
	icon_state = "rad_high"

/obj/rad/Initialize()
	..()
	GLOB.processing_objects += src

/obj/rad/Destroy()
	..()
	GLOB.processing_objects -= src

/obj/rad/Crossed(atom/A)
	..()

	if(istype(A,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = A
		src.trapped += H

		if(lasttime + cooldown < world.time)
			H.rad_act(src.damage_amount)

		H << sound(src.sound, repeat = 0, wait = 0, volume = 50, channel = 3)

		if(src.trapped.len >= 1)
			GLOB.processing_objects -= src

/obj/rad/Uncrossed(atom/A)
	..()
	if (istype(A,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = A
		src.trapped -= H
		GLOB.processing_objects -= src

/obj/rad/process(var/mob/living/L)
	. = 1

	if(src.trapped.len < 1)
		GLOB.processing_objects -= src
		return

	if(lasttime + cooldown > world.time)
		return

	if(rt >= 3)
		src.trapped = null
		return

	for(var/atom/A in src.trapped)

		if(!istype(A, /mob/living/carbon/human))
			trapped -= A
			continue

		var/mob/living/carbon/human/H = A

		if(H.stat == 2)
			trapped -= H
			continue

	for(var/i in 1 to 3 step 1)
		spawn(RADFUCK * i)
			L.rad_act(src.damage_amount)
			L << sound(src.sound, repeat = 0, wait = 0, volume = 50, channel = 3)

	for(L in loc)
		L.rad_act(src.damage_amount)

		L << sound(src.sound, repeat = 0, wait = 0, volume = 50, channel = 3)

		rt++

	src.lasttime = world.time