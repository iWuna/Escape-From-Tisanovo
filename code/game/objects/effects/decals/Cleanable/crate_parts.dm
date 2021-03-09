#define DEBRIS_DELETE_TIMER 2000

/obj/effect/decal/cleanable/blood/gibs/crate
	name = "crate debris"
	desc = "It's a useless heap of junk..."
	icon = 'icons/obj/objects.dmi'
	icon_state = "gib1"
	basecolor = SYNTH_BLOOD_COLOUR
	random_icon_states = list("gib1", "gib2", "gib3", "gib4", "gib5")

/obj/effect/decal/cleanable/blood/gibs/crate/update_icon()
	color = null

/obj/effect/decal/cleanable/blood/gibs/crate/Crossed(AM as mob|obj)
	return

/obj/effect/decal/cleanable/blood/gibs/crate/streak(var/list/directions)
	spawn(0)
		var/direction = pick(directions)
		for (var/i = 0, i < pick(1, 200; 2, 150; 3, 50; 4), i++)
			sleep(3)
			if (step_to(src, get_step(src, direction), 0))
				break

/obj/effect/decal/cleanable/blood/gibs/crate/New()
	..()
	spawn(DEBRIS_DELETE_TIMER)
		qdel(src)