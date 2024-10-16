#define BLAST 1
#define BOUNCING 2
//#define DELAYED 13



/obj/item/weapon/mine/
	name = "mine"
	desc = "SET DESC HERE BOIII."
//	icon = 'icons/obj/mines.dmi'
	icon_state = "mine"
	w_class = 3.0
	var/active = 0
	var/power1 = 2
	var/power2 = 2
	var/power3 = 2
	var/blasttype = BLAST
	var/delaytime = 0
	var/fragment_type = /obj/item/projectile/bullet/pellet/fragment
	var/num_fragments = 0  //total number of fragments produced by the grenade
	//The radius of the circle used to launch projectiles. Lower values mean less projectiles are used but if set too low gaps may appear in the spread pattern
	var/spread_range = 8 //leave as is, for some reason setting this higher makes the spread pattern have gaps close to the epicenter

/obj/item/weapon/mine/New()
	..()
	update_icon()
	pixel_y = rand(-8, 8)
	pixel_x = rand(-8, 8)

/obj/item/weapon/mine/active/New()
	..()
	active = 1
	update_icon()

/obj/item/weapon/mine/update_icon()
	if(active)
		icon_state = "[initial(icon_state)]-active"
	else
		icon_state = "[initial(icon_state)]"

/obj/item/weapon/mine/Crossed(A as mob|obj, var/obj/item/I)
	if(active)
		if(istype(A, /mob/living/))
			if(isturf(src.loc))
//				A.visible_message("<span class='notice'>[A] steps on \the [src]!</span>","<span class='notice'>You step on \the [src].</span>")
				expl()
		else if(istype(I, /obj/item/))
			if(I.w_class >= 2)
				if(prob(5 * I.w_class))
					expl()



/obj/item/weapon/mine/proc/expl()
	for(var/mob/O in oviewers(src))
		O << "\red *click*"
//		playsound(get_turf(src), 'sound/weapons/c4armed.ogg', 60, 1)
	if(blasttype == BOUNCING)
		flick("[initial(icon_state)]-spinning", src)
		for(var/mob/O in oviewers(src))
			O << "\red [src] suddenly jumps up!"
		//..()
	if(delaytime)
		sleep(delaytime)
		//..()
	var/turf/T = get_turf(src.loc)
	spawn(0)
		explosion(T, 0, power1, power2, power3)
		if(num_fragments)
			//blatant copypaste from frags, but those are a whole different type so vOv
			set waitfor = 0
			//..()

			var/turf/O = get_turf(src)
			if(!O) return

			var/list/target_turfs = getcircle(O, spread_range)
			var/fragments_per_projectile = round(num_fragments/target_turfs.len)

			for(var/turf/V in target_turfs)
				sleep(0)
				var/obj/item/projectile/bullet/pellet/fragment/P = new fragment_type(O)

				P.pellets = fragments_per_projectile
				P.shot_from = src.name

				P.launch(V)

				//Make sure to hit any mobs in the source turf
				for(var/mob/living/M in O)
					//lying on a frag grenade while the grenade is on the ground causes you to absorb most of the shrapnel.
					//you will most likely be dead, but others nearby will be spared the fragments that hit you instead.
					if(M.lying && isturf(src.loc))
						P.attack_mob(M, 0, 0)
					else
						P.attack_mob(M, 0, 100) //otherwise, allow a decent amount of fragments to pass
		sleep(1)
		qdel(src)


/obj/item/weapon/mine/attack_self()
	if(active)
		active = 0
		anchored = 0
		usr << "You deactivate the [src]."
	else
		usr << "You start to activate the [src]."
		if (do_after(usr, 25))
			active = 1
			anchored = 1
			usr << "You activated the [src]."
		else
			usr << "OH SHIT RUN!"
			if(prob(25))
				sleep(25)
				expl()

	update_icon()

/obj/item/weapon/mine/attack_hand()
	if(active)
		expl()
	else ..()

/obj/item/weapon/mine/throw_impact()
	expl()
/*
/obj/item/weapon/mine/dropped()
	..()
	usr << "You start to planting [src].."
	for(var/mob/O in oviewers(src))
		if ((O.client && !( O.blinded )))
			O << "[usr] start to planting [src]."
	if (do_after(usr, 16))
		usr << "\blue You plant [src]."
		..()
	else return*/

/obj/item/weapon/mine/attackby(obj/item/weapon/W as obj)
/*	if(istype(W, /obj/item/weapon/gun/projectile/automatic/m300))
		var/obj/item/weapon/gun/projectile/automatic/m300/C = W
		if(C.knife)
			deactivate()
		else
			if(active)
				usr << "Oh, no!"
				expl()*/
	if(istype(W, /obj/item/weapon/))
		deactivate()


	else if(active)
		if(prob(75))
			expl()
		else
			return

/obj/item/weapon/mine/proc/deactivate()
	if(active)
		usr << "You start to deactivate [src]."
		if (do_after(usr, 16))
			if(prob(75))
				src.active = 0
				update_icon()
				usr << "\blue Mine has been deactivated."
				for(var/mob/O in oviewers(src))
					if ((O.client && !( O.blinded )))
						O << "\blue [usr] deactivates the [src]."
			else	expl()
		else return


/obj/item/weapon/mine/bullet_act(var/obj/item/projectile/Proj)
	for(var/mob/O in oviewers(src))
		if ((O.client && !( O.blinded )))
			O << "\red [Proj] hits the [src]!"
	qdel(Proj)
	if(prob(15))
		expl()

/obj/item/weapon/mine/ex_act(severity)
	..()

	switch (severity)
		if (1.0)
			expl()
			return
		if (2.0)
			if(prob(75))
				expl()
		if(3.0)
			if(prob(40))
				expl()

/obj/item/weapon/mine/pmn
	name = "PMN-1"
	desc = "That's the generic mine used by Warsaw Pact military."
	icon = 'icons/obj/mines.dmi'
	icon_state = "pmn1"
	w_class = 3.0
	power1 = 1
	power2 = 3
	power3 = 5
	delaytime = 10

/obj/item/weapon/mine/pfm1
	name = "PFM-1"
	desc = "That's the generic mine used by Warsaw Pact military."
	icon = 'icons/obj/mines.dmi'
	icon_state = "pfm1"
	w_class = 2.0
	active = 1
	power1 = 1
	power2 = 2
	power3 = 2
	delaytime = 0

	New()
		dir = pick(1,2,4,8)
		update_icon()

/obj/item/weapon/mine/m16
	name = "M16 APM"
	desc = "That's the generic bouncing mine used by NATO."
	icon = 'icons/obj/mines.dmi'
	icon_state = "m16apm"
	w_class = 3.0
	power1 = 0
	power2 = 0
	power3 = 1
	delaytime = 10
	blasttype = BOUNCING
	num_fragments = 150

/obj/item/weapon/mine/ozm72
	name = "OZM-72"
	desc = "That's the generic bouncing mine used by Warsaw Pact. Also known as 'Witch' among Soviet troopers."
	icon = 'icons/obj/mines.dmi'
	icon_state = "ozm72"
	w_class = 3.0
	power1 = 0
	power2 = 0
	power3 = 1
	delaytime = 10
	blasttype = BOUNCING
	num_fragments = 150