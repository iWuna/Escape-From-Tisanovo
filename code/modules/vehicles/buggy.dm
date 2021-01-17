/obj/vehicle/car/
	name = "buggy"
	desc = "Wheelies! Woo!"
	icon = 'icons/obj/medium_vehicles.dmi'
	icon_state = "buggy_dune"
	dir = SOUTH
	buckle_pixel_shift = "x=0;y=8"
	load_item_visible = 1
	health = 100
	maxhealth = 100
	pixel_x = -17
	pixel_y = -2

	locked = 0
	fire_dam_coeff = 0.6
	brute_dam_coeff = 0.5
	var/protection_percent = 60

	var/land_speed = 0.6 //if 0 it can't go on turf
	var/space_speed = 2
	var/car_icon = "buggy_dune"

	var/kickstand = 1
	var/obj/item/weapon/engine/engine = null
	var/engine_type
	var/prefilled = 0
	var/engine_loop = 'sound/misc/buggy_loop.ogg'
	var/engine_start = 'sound/misc/buggy_start.ogg'
	var/mob/living/ML

/obj/vehicle/car/motorcycle
	name = "motorcycle"
	desc = "Wanderer Motors LLC."
	icon_state = "bike"
	car_icon = "bike"
	pixel_x = -16
	pixel_y = -2

	plane = ABOVE_OBJ_PLANE
	layer = BASE_ABOVE_OBJ_LAYER

	engine_type = /obj/item/weapon/engine/electric
	prefilled = 1

/obj/vehicle/car/motorcycle/New()
	..()
	switch(dir)
		if(NORTH)
			buckle_pixel_shift = "x=-1;y=9"
			plane = ABOVE_OBJ_PLANE
			layer = BASE_ABOVE_OBJ_LAYER
		if(EAST)
			buckle_pixel_shift = "x=-5;y=6"
			plane = ABOVE_OBJ_PLANE
			layer = BASE_ABOVE_OBJ_LAYER
		if(SOUTH)
			buckle_pixel_shift = "x=0;y=12"
			plane = ABOVE_HUMAN_PLANE
			layer = ABOVE_HUMAN_LAYER
		if(WEST)
			buckle_pixel_shift = "x=3;y=6"
			plane = ABOVE_OBJ_PLANE
			layer = BASE_ABOVE_OBJ_LAYER

/obj/vehicle/car/New()
	..()
	if(engine_type)
		load_engine(new engine_type(src.loc))
		if(prefilled)
			engine.prefill()
	update_icon()

	switch(dir)
		if(NORTH)
			buckle_pixel_shift = "x=-1;y=9"
		if(EAST)
			buckle_pixel_shift = "x=-5;y=6"
		if(SOUTH)
			buckle_pixel_shift = "x=0;y=12"
		if(WEST)
			buckle_pixel_shift = "x=3;y=6"

/obj/vehicle/car/verb/toggle()
	set name = "Turn Engine"
	set category = "Object"
	set src in view(0)

	if(usr.incapacitated()) return
	if(!engine)
		to_chat(usr, "<span class='warning'>\The [src] does not have an engine block installed...</span>")
		return

	if(!on)
		turn_on()
	else
		turn_off()

/obj/vehicle/car/proc/load_engine(var/obj/item/weapon/engine/E, var/mob/user)
	if(engine)
		return
	if(user)
		user.drop_from_inventory(E)
	engine = E
	engine.forceMove(src)

/obj/vehicle/car/proc/unload_engine()
	if(!engine)
		return
	engine.forceMove(get_turf(src))

/obj/vehicle/car/load(var/atom/movable/C)
	var/mob/living/M = C
	if(!istype(C)) return 0
	if(M.buckled || M.restrained() || !Adjacent(M) || !M.Adjacent(src))
		return 0
	return ..(M)

/obj/vehicle/car/emp_act(var/severity)
	if(engine)
		engine.emp_act(severity)
	..()

/obj/vehicle/car/insert_cell(var/obj/item/weapon/cell/C, var/mob/living/carbon/human/H)
	return

/obj/vehicle/car/attackby(obj/item/W as obj, mob/user as mob)
	if(open)
		if(istype(W, /obj/item/weapon/engine))
			if(engine)
				to_chat(user, "<span class='warning'>There is already an engine block in \the [src].</span>")
				return 1
			user.visible_message("<span class='warning'>\The [user] installs \the [W] into \the [src].</span>")
			load_engine(W)
			return
		else if(engine && engine.attackby(W,user))
			return 1
		else if(istype(W, /obj/item/weapon/crowbar) && engine)
			to_chat(user, "You pop out \the [engine] from \the [src].")
			unload_engine()
			return 1
	return ..()

/obj/vehicle/car/MouseDrop_T(var/atom/movable/C, mob/user as mob)
	if(!load(C))
		to_chat(user, "<span class='warning'> You were unable to load \the [C] onto \the [src].</span>")
		return

/obj/vehicle/car/attack_hand(var/mob/user as mob)
	if(user == load)
		unload(load)
		to_chat(user, "You unbuckle yourself from \the [src]")

/obj/vehicle/car/relaymove(mob/user, direction)
	if(user != load || !on || user.incapacitated())
		return
	return Move(get_step(src, direction))

/obj/vehicle/car/Move(var/turf/destination)
	if(!pulledby)
		if(!land_speed)
			return 0
		move_delay = land_speed
		if(!engine || !engine.use_power())
			turn_off()
			return 0
	return ..()

/obj/vehicle/car/turn_on()
	if(!engine || on)
		return

	engine.rev_engine(src)
	anchored = 1

	playsound(src, engine_start, 50)
	usr << sound('sound/misc/buggy_loop.ogg', repeat = 1, wait = 0, volume = 40, channel = 8)
	update_icon()

	if(pulledby)
		pulledby.stop_pulling()
	..()

/obj/vehicle/car/turn_off()
	if(!on)
		return
	if(engine)
		engine.putter(src)

	usr << sound(null, repeat = 0, wait = 0, volume = 0, channel = 8)

	update_icon()

	..()

/obj/vehicle/car/bullet_act(var/obj/item/projectile/Proj)
	if(buckled_mob && prob(protection_percent))
		buckled_mob.bullet_act(Proj)
		return
	..()

/obj/vehicle/car/update_icon()
	overlays.Cut()

	if(on)
		icon_state = "[car_icon]_on"
	else
		icon_state = "[car_icon]_off"
	..()

/obj/vehicle/car/Destroy()
	qdel(engine)
	..()

/obj/vehicle/car/thermal
	engine_type = /obj/item/weapon/engine/thermal
	prefilled = 1

/obj/vehicle/car/electric
	engine_type = /obj/item/weapon/engine/electric
	prefilled = 1
