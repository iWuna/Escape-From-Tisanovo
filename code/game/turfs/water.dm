/turf/unsimulated/floor/river
	name = "river"
	icon = 'icons/turf/flooring/water.dmi'
	icon_state = "water"
	blend_with_neighbors = 4
	movement_delay = 10
	outdoors = 1
	footstep_sounds = list("human" = list(
		'sound/effects/footsteps/wade1.wav',
		'sound/effects/footsteps/wade2.wav',
		'sound/effects/footsteps/wade3.wav',
		'sound/effects/footsteps/wade4.wav',
		'sound/effects/footsteps/wade5.wav',
		'sound/effects/footsteps/wade6.wav',
		'sound/effects/footsteps/wade7.wav',
		'sound/effects/footsteps/wade8.wav'))

/turf/unsimulated/floor/river/New()
	update_icon()
//	..() // To get the edges.
/*
/turf/unsimulated/floor/river/update_icon()
	var/image/overmob_overlay
	overmob_overlay = image('icons/turf/flooring/water.dmi',src,"riverwater", "layer" = MOB_LAYER+0.1)
	overlays += overmob_overlay
*/

/turf/unsimulated/floor/river/deep
	name = "deep river"
	icon_state = "waterdeep"

/turf/unsimulated/floor/river/deep/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /mob/))
		return 0
	else
		return !density
