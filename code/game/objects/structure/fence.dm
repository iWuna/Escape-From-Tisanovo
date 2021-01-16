//Chain link fences
//Can be cut with wirecutters up to 3 times, cutting takes 20 seconds
//If there's a wire placed under the fence, the fence is electrified and can't be touched/cut without gloves

//Fence smashing sound downloaded from http://freesound.org/people/hintringer/sounds/274768/

#define CUT_TIME (20 SECONDS)
#define CLIMB_TIME (20 SECONDS)

#define NO_HOLE 0 //section is intact
#define SMALL_HOLE 1 //small hole in the section - can pass small items through.
#define MEDIUM_HOLE 2 //medium hole in the section - can climb through (takes 20 seconds)
#define LARGE_HOLE 3 //large hole in the section - can walk through
#define MAX_HOLE_SIZE LARGE_HOLE

/obj/structure/fence
	name = "fence"
	desc = "A chain link fence. Not as effective as a wall, but generally it keeps people out."
	density = 1
	anchored = 1

	icon = 'icons/obj/structures/fence.dmi'
	icon_state = "straight"

	var/cuttable = TRUE
	var/hole_size= NO_HOLE
	var/invulnerable = FALSE
	var/cover = 0 //how much cover the girder provides against projectiles.

/obj/structure/fence/New()
	..()

	update_cut_status()

/obj/structure/fence/examine(mob/user)
	.=..()

	switch(hole_size)
		if(SMALL_HOLE)
			user.show_message("There is a small hole in \the [src].")
		if(MEDIUM_HOLE)
			user.show_message("There is a large hole in \the [src].")
		if(LARGE_HOLE)
			user.show_message("\The [src] has been completely cut through.")

/obj/structure/fence/end
	icon_state = "end"
	cuttable = FALSE

/obj/structure/fence/corner
	icon_state = "corner"
	cuttable = FALSE

/obj/structure/fence/post
	icon_state = "post"
	cuttable = FALSE

/obj/structure/fence/cut/small
	icon_state = "straight_cut1"
	hole_size = SMALL_HOLE

/obj/structure/fence/cut/medium
	icon_state = "straight_cut2"
	hole_size = MEDIUM_HOLE

/obj/structure/fence/cut/large
	icon_state = "straight_cut3"
	hole_size = LARGE_HOLE

/obj/structure/fence/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(!cuttable)
		to_chat(user, "<span class='notice'>This section of the fence can't be cut.</span>")
		return

	if(invulnerable)
		to_chat(user, "<span class='notice'>This fence is too strong to cut through.</span>")
		return

	if(iswirecutter(W))
		if(hole_size == NO_HOLE)
			if(do_after(user, 10))
				playsound(loc, 'sound/items/Wirecutter.ogg', 100, 1)
				new /obj/item/stack/rods(src.loc)
				icon_state = "straight_cut1"
				hole_size = SMALL_HOLE
				update_cut_status()
		if(hole_size == SMALL_HOLE)
			if(do_after(user, 10))
				playsound(loc, 'sound/items/Wirecutter.ogg', 100, 1)
				new /obj/item/stack/rods(src.loc)
				icon_state = "straight_cut2"
				hole_size = MEDIUM_HOLE
				update_cut_status()
		if(hole_size == MEDIUM_HOLE)
			if(do_after(user, 10))
				playsound(loc, 'sound/items/Wirecutter.ogg', 100, 1)
				new /obj/item/stack/rods(src.loc)
				icon_state = "straight_cut3"
				hole_size = LARGE_HOLE
				update_cut_status()
		if(hole_size == LARGE_HOLE)
			if(do_after(user, 10))
				playsound(loc, 'sound/items/Wirecutter.ogg', 100, 1)
				new /obj/item/stack/rods(src.loc)
				qdel(src)

/obj/structure/fence/attack_hand(mob/user)
	if(user.a_intent == I_HURT)
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
		playsound(loc, 'sound/effects/fence_smash.ogg', 80, 1)
		user.do_attack_animation(src)

		var/damage_dealt = 1
		var/attack_message = "kicks"
		if(istype(user,/mob/living/carbon/human))
			var/mob/living/carbon/human/H = user
			if(H.species.can_shred(H))
				attack_message = "mangles"
				damage_dealt = 5

		if(shock(user, 70))
			return

		if(HULK in user.mutations)
			damage_dealt += 5
		else
			damage_dealt += 1

		attack_generic(user,damage_dealt,attack_message)

	if(hole_size == MEDIUM_HOLE)

		user.visible_message("<span class='danger'>\The [user] starts climbing through \the [src]!</span>",\
		"<span class='info'>You start climbing through \the [src]. This will take about [CLIMB_TIME / 10] seconds.</span>")

		if(do_after(user, src, CLIMB_TIME) && !shock(user, 70)) //70% chance to get shocked
			user.forceMove(get_turf(src)) //Could be exploitable as it doesn't check for any other dense objects on the turf. Fix when fences are buildable!
			user.visible_message("<span class='danger'>\The [user] climbs through \the [src]!</span>")

	return 1

/obj/structure/fence/proc/update_cut_status()
	if(!cuttable)
		return

	density = 1

	switch(hole_size)
		if(NO_HOLE)
			icon_state = initial(icon_state)
		if(SMALL_HOLE)
			icon_state = "straight_cut1"
		if(MEDIUM_HOLE)
			icon_state = "straight_cut2"
		if(LARGE_HOLE)
			icon_state = "straight_cut3"
			density = 0

/obj/structure/fence/Bumped(atom/user)
	if(ismob(user))
		shock(user, 60)

//Mostly copied from grille.dm

/obj/structure/fence/bullet_act(var/obj/item/projectile/Proj)
	//Girders only provide partial cover. There's a chance that the projectiles will just pass through. (unless you are trying to shoot the girder)
	if(Proj.original != src && !prob(cover))
		return PROJECTILE_CONTINUE //pass through

	var/damage = Proj.get_structure_damage()
	if(!damage)
		return

	if(!istype(Proj, /obj/item/projectile/beam))
		damage *= 0.4 //non beams do reduced damage

	..()
	return


//Mostly copied from grille.dm
/obj/structure/fence/proc/shock(mob/user, prb = 100)
	if(!prob(prb)) //If the probability roll failed, don't go further
		return 0
	if(!in_range(src, user)) //To prevent TK and mech users from getting shocked
		return 0
	//Process the shocking via powernet, our job is done here
	var/turf/T = get_turf(src)
	var/obj/structure/cable/C = T.get_cable_node()
	if(C)
		if(electrocute_mob(user, C, src))
			return 1
		else
			return 0
	return 0

//FENCE DOORS

/obj/structure/fence/door
	name = "fence door"
	desc = "Not very useful without a real lock."
	icon_state = "door_closed"
	cuttable = FALSE
	var/open = FALSE

/obj/structure/fence/door/New()
	..()

	update_door_status()

/obj/structure/fence/door/opened
	icon_state = "door_opened"
	open = TRUE

/obj/structure/fence/door/attack_hand(mob/user)
	if(can_open(user))
		toggle(user)

	return 1

/obj/structure/fence/door/proc/toggle(mob/user)
	switch(open)
		if(FALSE)
			visible_message("<span class='notice'>\The [user] opens \the [src].</span>")
			open = TRUE
		if(TRUE)
			visible_message("<span class='notice'>\The [user] closes \the [src].</span>")
			open = FALSE

	update_door_status()
	playsound(get_turf(src), 'sound/machines/click.ogg', 100, 1)

/obj/structure/fence/door/proc/update_door_status()
	switch(open)
		if(FALSE)
			density = 1
			icon_state = "door_closed"
		if(TRUE)
			density = 0
			icon_state = "door_opened"

/obj/structure/fence/door/proc/can_open(mob/user)
	return TRUE

//Secure doors - can only be opened/closed from one direction
//For example, you can open and close them if you're standing south of them, but can't if you're standing north
/obj/structure/fence/door/secure
	name = "secure fence door"
	desc = "A fence door with a door latch. It can only be opened and closed from one direction."

	var/permitted_direction = SOUTH

/obj/structure/fence/door/secure/from_south
	permitted_direction = SOUTH

/obj/structure/fence/door/secure/from_north
	permitted_direction = NORTH

/obj/structure/fence/door/secure/from_east
	permitted_direction = EAST

/obj/structure/fence/door/secure/from_west
	permitted_direction = WEST

/obj/structure/fence/door/secure/can_open(mob/user)
	//User must be standing in the permitted direction from the door, or must have telekinesis
	if((get_dir(src, user) == permitted_direction))
		return TRUE
	else
		to_chat(user, "<span class='warning'>You can't reach the door latch from here!</span>")
		return FALSE

#undef CUT_TIME
#undef CLIMB_TIME

#undef NO_HOLE
#undef SMALL_HOLE
#undef MEDIUM_HOLE
#undef LARGE_HOLE
#undef MAX_HOLE_SIZE

/obj/structure/newfence/
	flags = OBJ_CLIMBABLE
	layer = ABOVE_OBJ_LAYER + 0.1
	plane = ABOVE_HUMAN_PLANE

/obj/structure/newfence/New()
	update_nearby_icons()

	//Update Sides
/obj/structure/newfence/proc/update_nearby_icons()
	update_icon()
	for(var/direction in GLOB.cardinal)
		for(var/obj/structure/newfence/B in get_step(src,direction))
			B.update_icon()

	//Update Icons
/obj/structure/newfence/update_icon()
	spawn(2)
		if(!src)
			return
		var/junction = 0 //will be used to determine from which side the barricade is connected to other barricades
		for(var/obj/structure/newfence/B in orange(src,1))
			if(abs(x-B.x)-abs(y-B.y) ) 		//doesn't count barricades, placed diagonally to src
				junction |= get_dir(src,B)

		icon_state = "fence_[junction]"
		return

/obj/structure/newfence/CheckExit(atom/movable/O as mob|obj, target as turf)
	if(istype(O) && O.checkpass(PASSTABLE))
		return 1
	if(get_dir(O.loc, target) == dir)
		return 0
	return 1

/obj/structure/newfence/do_climb(var/mob/living/user)
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

/obj/structure/newfence/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(!mover)
		return 1
	if(istype(mover) && mover.checkpass(PASSTABLE))
		return 1
	if(get_dir(get_turf(src), target) == dir)
		return 0
	else
		return 1

/obj/structure/newfence/wooden
	name = "wooden fence"
	desc = "Cheap as hell, but it still makes its job."
	density = 1
	anchored = 1
	icon = 'icons/obj/structures/fence/wooden.dmi'
	icon_state = "fence_0"
	throwpass = 1//we can throw grenades despite its density

/obj/structure/newfence/metal
	name = "metal fence"
	desc = "Cheap as hell, but it still makes its job."
	density = 1
	anchored = 1
	icon = 'icons/obj/structures/fence/greenmetal.dmi'
	icon_state = "fence_0"
	throwpass = 1//we can throw grenades despite its density


/obj/structure/newfence/concrete
	name = "concrete fence"
	desc = "You've definetly seen this fence before."
	density = 1
	anchored = 1
	opacity = 1
	icon = 'icons/obj/structures/fence/concrete.dmi'
	icon_state = "fence_0"

/obj/structure/newfence/woodenhigh
	name = "high wooden fence"
	desc = "You've definetly seen this fence before."
	density = 1
	anchored = 1
	opacity = 1
	icon = 'icons/obj/structures/fence/woodenhigh.dmi'
	icon_state = "fence_0"

