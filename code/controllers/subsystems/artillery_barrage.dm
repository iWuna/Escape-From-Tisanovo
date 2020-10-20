var/global/list/turf/barraged_turfs = list()


SUBSYSTEM_DEF(artillery)
	name = "Artillery"
	init_order = INIT_ORDER_ARTILLERY
	wait = 4 SECONDS
	flags = SS_BACKGROUND
	runlevels = RUNLEVEL_GAME | RUNLEVEL_POSTGAME



/datum/controller/subsystem/artillery/Initialize()
	..()
	adjustbarragedturfs()

/datum/controller/subsystem/artillery/proc/adjustbarragedturfs()
	for(var/obj/effect/landmark/artillery/T in landmarks_list)
		var/turf/TR = T.loc
		barraged_turfs |= TR

/datum/controller/subsystem/artillery/fire()
	spawn(0)
		var/turf/target = pick(barraged_turfs)
		target.artillery_act()
	sleep(rand(60,120))
	spawn(0)
		var/turf/target1 = pick(barraged_turfs)
		target1.artillery_act()

/turf/proc/artillery_act()
	if(prob(50))
		playsound(world, 'sound/effects/mortar_fire.wav', 40, 1)
	sleep(rand(50,100))
	playsound(src, 'sound/effects/mortar_falling.wav', 80, 1)
	sleep(rand(	0,60))
	explosion(src, 1, 2, 4, 5)
	sleep(rand(30,60))


/client/proc/stop_art_shelling()
	set name = "Stop Artillery Shelling"
	set category = "EscAdmin"

	if(!holder)
		return

	SSartillery.pause()
	SSartillery.Destroy()
	SSartillery.flags = 0