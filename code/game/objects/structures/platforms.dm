/*
 * Platforms
 */
/obj/structure/platform
	name = "platform"
	desc = "A square metal surface resting on four legs."
	icon = 'icons/obj/platforms.dmi'
	icon_state = "platform"
	anchored = TRUE
	density = 1
	throwpass = 1 //You can throw objects over this, despite its density.
	layer = OBJ_LAYER
	flags = ON_BORDER | OBJ_CLIMBABLE

/obj/structure/platform/New()
	var/image/I = image(icon, src, "platform_overlay", OBJ_LAYER - 0,1, dir)//ladder layer puts us just above weeds.
	switch(dir)
		if(SOUTH)
			layer = ABOVE_HUMAN_LAYER
			I.pixel_y = -16
		if(NORTH)
			I.pixel_y = 16
		if(EAST)
			I.pixel_x = 16
		if(WEST)
			I.pixel_x = -16
	overlays += I
	..()

/obj/structure/platform/CheckExit(atom/movable/O as mob|obj, target as turf)
	if(istype(O) && O.checkpass(PASSTABLE))
		return 1
	if(get_dir(O.loc, target) == dir)
		return 0
	return 1

/obj/structure/platform/CanPass(atom/movable/mover, turf/target)
	if(!mover)
		return 1
	if(istype(mover) && mover.checkpass(PASSTABLE))
		return 1
	if(get_dir(loc, target) == dir)
		return 1
	if(get_dir(get_turf(src), target) == dir)
		return 0
	else
		return 1

/obj/structure/platform/do_climb(var/mob/living/user)
	if(!can_climb(user))
		return

	usr.visible_message("<span class='warning'>[user] starts climbing onto \the [src]!</span>")
	climbers |= user

	if(!do_after(user,(issmall(user) ? 20 : 34 / user.sstatmodifier(user.dex))))
		climbers -= user
		return

	if(!can_climb(user, post_climb_check=1))
		climbers -= user
		return

	if(get_turf(user) == get_turf(src))
		usr.forceMove(get_step(src, src.dir))
	else
		usr.forceMove(get_turf(src))

	usr.visible_message("<span class='warning'>[user] climbed over \the [src]!</span>")
	climbers -= user

obj/structure/platform_decoration
	name = "platform"
	desc = "A square metal surface resting on four legs."
	icon = 'icons/obj/platforms.dmi'
	icon_state = "platform_deco"
	anchored = TRUE
	density = 0
	throwpass = TRUE
	layer = 3.5
	breakable = FALSE
	flags = ON_BORDER

/obj/structure/platform_decoration/New()
	switch(dir)
		if (NORTH)
			layer = ABOVE_HUMAN_LAYER
		if (SOUTH)
			layer = ABOVE_HUMAN_LAYER
		if (SOUTHEAST)
			layer = ABOVE_HUMAN_LAYER
		if (SOUTHWEST)
			layer = ABOVE_HUMAN_LAYER
	.. ()