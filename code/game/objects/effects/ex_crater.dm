/obj/effect/crater64
	name = "explosion crater"
	icon_state = "dirt_shell"
	icon = 'icons/turf/flooring/crater64.dmi'
	layer = BASE_ABOVE_OBJ_LAYER
	density = 0
	opacity = 0
	anchored = 1
	mouse_opacity = 0
	pixel_x = -16
	pixel_y = -16

/obj/effect/crater64/New()
	dir = pick(1,2,4,8)