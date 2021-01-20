/obj/structure/sandbag
	name = "sandbag"
	icon = 'icons/obj/structures.dmi'
	icon_state = "sandbag"
	density = 1
	//if(A.density && !A.throwpass) src.throw_impact(A,speed)
	throwpass = 1//we can throw grenades despite its density
	anchored = 1
	flags = OBJ_CLIMBABLE
	var/basic_chance = 50
	var/health = 200 //Actual health depends on snow layer

/obj/structure/sandbag/New(loc, direction)
	if(direction)
		dir = direction

	if(dir == SOUTH)
		pixel_y = -7
	else if(dir == NORTH)
		pixel_y = 7
	..()

/obj/structure/sandbag/New()
	..()
	flags |= ON_BORDER
	update_layers()
	//to_world(" New(). Dir:[dir]; Layer:[layer]; plane:[plane]")

/obj/structure/sandbag/Destroy()
	basic_chance = null
	..()

// Duplicated from structures.dm, but its a bit different.
/obj/structure/sandbag/do_climb(var/mob/living/user)
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

/obj/structure/sandbag/proc/update_layers()
	if(dir != SOUTH)
		layer = initial(layer) + 0.1
		plane = initial(plane)
	else
		layer = ABOVE_OBJ_LAYER + 0.1
		plane = ABOVE_HUMAN_PLANE

/obj/structure/sandbag/set_dir()
	..()
	update_layers()

/obj/structure/sandbag/CanPass(atom/movable/mover, turf/target, height=0, air_group=0)
	if(istype(mover, /obj/item/projectile))
		var/obj/item/projectile/proj = mover

		if(proj.firer && Adjacent(proj.firer))
			return 1

		if (get_dist(proj.starting, loc) <= 1)//allows to fire from 1 tile away of sandbag
			return 1

		return check_cover(mover, target)

	if(get_dir(get_turf(src), target) == dir)//turned in front of sandbag
		return 0

	else
		return 1

/obj/structure/sandbag/CheckExit(atom/movable/O as mob|obj, target as turf)
	if(istype(O) && O.checkpass(PASSTABLE))
		return 1
	if (get_dir(loc, target) == dir)
		return !density
	else
		return 1
	return 1

//checks if projectile 'P' from turf 'from' can hit whatever is behind the table. Returns 1 if it can, 0 if bullet stops.
/obj/structure/sandbag/proc/check_cover(obj/item/projectile/P, turf/from)
	var/turf/cover = get_turf(src)
	var/chance = basic_chance

	if(!cover)
		return 1

	var/mob/living/carbon/human/M = locate(src.loc)
	if(M)
		chance += 30

		if(M.lying)
			chance += 20

	if(get_dir(loc, from) == dir)
		chance += 10

	if(prob(chance))
		visible_message("<span class='warning'>[P] hits \the [src]!</span>")
		health -= P.damage/3
		visible_message("<span class='warning'>[P] hits [src]!</span>")
		health_check()
		return 0

	return 1

	//Check sandbag
/obj/structure/sandbag/proc/health_check(var/die)
	if(health < 1 || die)
		visible_message("\red <B>[src] falls apart!</B>")
		qdel(src)

/obj/structure/sandbag/MouseDrop_T(obj/O as obj, mob/user as mob)
	..()
	/*if((!( istype(O, /obj/item/weapon) ) || user.get_active_hand() != O))//ohhh yea useless shit hoorah like it <3
		return*///potentially disassembling thro MouseDrop ~le-bastard
	if(isrobot(user))
		return
	//user.drop_item()
	if(src.loc != user.loc)
		to_chat(user, "you start climbing onto [O]...")
		step(O, get_dir(O, src))
	return

/obj/structure/sandbag/ex_act(severity)
	switch(severity)
		if(1.0)
			new /obj/item/weapon/ore/glass(src.loc)
			new /obj/item/weapon/ore/glass(src.loc)
			if(prob(50))
				new /obj/item/weapon/ore/glass(src.loc)
			qdel(src)
		if(2.0)
			new /obj/item/weapon/ore/glass(src.loc)
			if(prob(50))
				new /obj/item/weapon/ore/glass(src.loc)//ahhh yea, random
			qdel(src)
		else
	return

/obj/item/weapon/sandbag
	name = "sandbags"
	//icon = 'icons/obj/weapons.dmi'
	icon_state = "sandbag_empty"
	w_class = 1
	var/sand_amount = 0//how much piles of dirt on item's spawn

//семантика ебанутая
//if there are like 3-4 sandbags or they are placed in one directions and each of them will call CanPass for projectiles - very imbalanced
/obj/item/weapon/sandbag/proc/check4sandbags(mob/user as mob)
	var/i = 0

	for(var/obj/structure/sandbag/baggy in user.loc.contents)
		++i
		if((baggy.dir == user.dir) || i > 1)
			to_chat(user, "<span class='warning'>There is no more space.</span>")
			return 1
	return 0

//or there are any shit on turf you want to place sandbag
/obj/item/weapon/sandbag/proc/check4struct(mob/user as mob)
	if((locate(/obj/structure/chezh_hangehog) || \
		locate(/obj/structure/sandbag/concrete_block) || \
		locate(/obj/structure/brutswehr)) in user.loc.contents \
		)
		to_chat(user, "<span class='warning'>There is no more space.</span>")
		return 1
	return 0

/obj/item/weapon/sandbag/attack_self(mob/user as mob)
	if(sand_amount < 4)
		to_chat(user,  "<span class='warning'>You need more sand to make a wall.</span>")
		return
	if(!isturf(user.loc))
		to_chat(user, "<span class='warning'>Haha, not funny.</span>")
		return

	if(check4sandbags(user) || check4struct(user))// 0 || 0
		return

	var/obj/structure/sandbag/bag = new(user.loc)//new (user.loc)
	bag.set_dir(user.dir)
	user.drop_item()
	qdel(src)

/obj/item/weapon/sandbag/attackby(obj/O as obj, mob/user as mob)
	if(istype(O, /obj/item/weapon/ore/glass))
		if(sand_amount >= 4)
			to_chat(user, "<span class='warning'>[name] is full!</span>")
			return
		user.drop_item()
		qdel(O)
		sand_amount++
		w_class++
		update_icon()
		to_chat(user, "<span class='warning'>You need [4 - sand_amount] more piles.</span>")

	var/obj/item/weapon/shovel/S = O
	if(istype(S, /obj/item/weapon/shovel))
		if(sand_amount >= 4)
			to_chat(user, "<span class='warning'>[name] is full!</span>")
			return
		if(S.ground <= 0)
			return
		playsound(src, 'sound/effects/empty_shovel.ogg', 50, 1)
		S.ground -= 1
		S.update_icon()
		sand_amount++
		w_class++
		update_icon()
		to_chat(user, "<span class='warning'>You need [4 - sand_amount] more piles.</span>")
	return

/obj/item/weapon/sandbag/update_icon()
	if(sand_amount >= 4)
		icon_state = "sandbag"
	else
		icon_state = "sandbag_empty"

/obj/structure/sandbag_wall
	name = "sandbag"
	icon = 'icons/escalation/sandbags.dmi'
	icon_state = "sandbag_big"
	density = 1
	throwpass = 0
	anchored = 1

/obj/structure/sandbag_wall/CheckExit(atom/movable/O as mob|obj, target as turf)
	if(istype(O) && O.checkpass(PASSTABLE))
		return 1
	if (get_dir(loc, target) == dir)
		return !density
	else
		return 1
	return 1

/obj/structure/sandbag_wall/New()
	..()
	flags |= ON_BORDER
	update_layers()

/obj/structure/sandbag_wall/proc/update_layers()
	if(dir != SOUTH)
		layer = initial(layer) + 0.1
		plane = initial(plane)
	else
		layer = ABOVE_OBJ_LAYER + 0.1
		plane = ABOVE_HUMAN_PLANE

/obj/structure/sandbag_wall/set_dir()
	..()
	update_layers()

/obj/structure/sandbag_wall/end
	icon_state = "sandbag_big_end"
	throwpass = 1

/obj/structure/sandbag_wall/end2
	icon_state = "sandbag_big_end2"
	throwpass = 1