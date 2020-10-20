/turf/unsimulated/floor
	name = "floor"
	icon = 'icons/turf/floors.dmi'
	icon_state = "Floor3"

/turf/unsimulated/floor/bluespace //non-doomsday version of bluespace for transit and wizden
	name = "\improper bluespace"
	icon = 'icons/turf/space.dmi'
	icon_state = "bluespace"
	desc = "Looks like infinity."

/turf/unsimulated/mask
	name = "mask"
	icon = 'icons/turf/walls.dmi'
	icon_state = "rockvault"

/turf/unsimulated/floor/rescue_base
	icon_state = "asteroidfloor"

/turf/unsimulated/floor/shuttle_ceiling
	icon_state = "reinforced"

/turf/unsimulated/floor/road
	name = "road"
	icon = 'icons/turf/newfloor.dmi'
	icon_state = "roaddottedstripes"
	blend_with_neighbors = 10
	outdoors = 1
	footstep_sounds = list("human" = list(
		'sound/effects/footsteps/concrete1.wav',
		'sound/effects/footsteps/concrete2.wav',
		'sound/effects/footsteps/concrete3.wav',
		'sound/effects/footsteps/concrete4.wav',
		'sound/effects/footsteps/concrete5.wav',
		'sound/effects/footsteps/concrete6.wav',
		'sound/effects/footsteps/concrete7.wav',
		'sound/effects/footsteps/concrete8.wav'))