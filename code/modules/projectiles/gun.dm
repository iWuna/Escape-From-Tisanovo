/*
	Defines a firing mode for a gun.

	A firemode is created from a list of fire mode settings. Each setting modifies the value of the gun var with the same name.
	If the fire mode value for a setting is null, it will be replaced with the initial value of that gun's variable when the firemode is created.
	Obviously not compatible with variables that take a null value. If a setting is not present, then the corresponding var will not be modified.
*/
/datum/firemode
	var/name = "default"
	var/list/settings = list()

/datum/firemode/New(obj/item/weapon/gun/gun, list/properties = null)
	..()
	if(!properties) return

	for(var/propname in properties)
		var/propvalue = properties[propname]

		if(propname == "mode_name")
			name = propvalue
		else if(isnull(propvalue))
			settings[propname] = gun.vars[propname] //better than initial() as it handles list vars like burst_accuracy
		else
			settings[propname] = propvalue

/datum/firemode/proc/apply_to(obj/item/weapon/gun/gun)
	for(var/propname in settings)
		gun.vars[propname] = settings[propname]

//Parent gun type. Guns are weapons that can be aimed at mobs and act over a distance
/obj/item/weapon/gun
	name = "gun"
	desc = "Its a gun. It's pretty terrible, though."
	icon = 'icons/obj/gun.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/items/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/mob/items/righthand_guns.dmi',
		)
	icon_state = "detective"
	item_state = "gun"
	flags =  CONDUCT
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	w_class = ITEM_SIZE_NORMAL
	throwforce = 5
	throw_speed = 4
	throw_range = 5
	force = 5
	time_to_equip = 5
	time_to_unequip = 5
	origin_tech = list(TECH_COMBAT = 1)
	attack_verb = list("struck", "hit", "bashed")
	zoomdevicename = "iron sights"

	var/empty_sound = 'sound/weapons/gunhandling/gen_empty.ogg'
	var/burst = 1
	var/fire_delay = 6 	//delay after shooting before the gun can be used again
	var/burst_delay = 2	//delay between shots, if firing in bursts
	var/move_delay = 1
	var/fire_sound = 'sound/weapons/gunshot/gunshot.ogg'
	var/fire_sound_text = "gunshot"
	var/screen_shake = 0 //shouldn't be greater than 2 unless zoomed
	var/silenced = 0
	var/accuracy = 0   //accuracy is measured in tiles. +1 accuracy means that everything is effectively one tile closer for the purpose of miss chance, -1 means the opposite. launchers are not supported, at the moment.
	var/scoped_accuracy = null
	var/list/burst_accuracy = list(0) //allows for different accuracies for each shot in a burst. Applied on top of accuracy
	var/list/dispersion = list(0)
	var/one_hand_penalty
	var/wielded_item_state
	var/automatic = 0  //can gun use it, 0 is no, anything above 0 is the delay between clicks in ds
	var/loud = 0
	var/next_fire_time = 0
	var/fire_anim = null
	var/safety = 1 //Whether or not the safety is on.
	var/drawsound = 0

	var/sel_mode = 1 //index of the currently selected mode
	var/list/firemodes = list()

	//aiming system stuff
	var/keep_aim = 1 	//1 for keep shooting until aim is lowered
						//0 for one bullet after tarrget moves and aim is lowered
	var/multi_aim = 0 //Used to determine if you can target multiple people.
	var/tmp/list/mob/living/aim_targets //List of who yer targeting.
	var/tmp/mob/living/last_moved_mob //Used to fire faster at more than one person.
	var/tmp/told_cant_shoot = 0 //So that it doesn't spam them with the fact they cannot hit them.
	var/tmp/lock_time = -100
	var/upg_sup = 0
	var/upg_bar = 0
	var/upg_rap = 0
	var/upg_aut = 0
	var/upg_stb = 0

	var/blowout_chance = 0
	var/condition = 100 //phleg

	var/unload_sound 	= 'sound/weapons/flipblade.ogg'
	var/reload_sound 	= null //We don't want these for guns that don't have them.
	var/cocked_sound 	= null
	var/dist_shot_sound = null


/obj/item/weapon/gun/Initialize()
	. = ..()
	for(var/i in 1 to firemodes.len)
		firemodes[i] = new /datum/firemode(src, firemodes[i])

	if(isnull(scoped_accuracy))
		scoped_accuracy = accuracy

/obj/item/weapon/gun/update_twohanding()
	if(one_hand_penalty)
		var/mob/living/M = loc
		if(istype(M))
			if(M.can_wield_item(src) && src.is_held_twohanded(M))
				name = "[initial(name)] (wielded)"
			else
				name = initial(name)
		update_icon() // In case item_state is set somewhere else.
	..()

/obj/item/weapon/gun/update_icon()
	if(wielded_item_state)
		var/mob/living/M = loc
		if(istype(M))
			if(M.can_wield_item(src) && src.is_held_twohanded(M))
				item_state_slots[slot_l_hand_str] = wielded_item_state
				item_state_slots[slot_r_hand_str] = wielded_item_state
			else
				item_state_slots[slot_l_hand_str] = initial(item_state)
				item_state_slots[slot_r_hand_str] = initial(item_state)

//Checks whether a given mob can use the gun
//Any checks that shouldn't result in handle_click_empty() being called if they fail should go here.
//Otherwise, if you want handle_click_empty() to be called, check in consume_next_projectile() and return null there.
/obj/item/weapon/gun/proc/special_check(var/mob/user)

	if(!istype(user, /mob/living))
		return 0
	if(!user.IsAdvancedToolUser())
		return 0

	var/mob/living/M = user
	if(HULK in M.mutations)
		to_chat(M, "<span class='danger'>Your fingers are much too large for the trigger guard!</span>")
		return 0

	var/area/B = get_area(user.loc)
	if(B.safezone)
		to_chat(M, "<span class='danger'>You can't fire there!</span>")
		return 0
	if((CLUMSY in M.mutations) && prob(40)) //Clumsy handling
		var/obj/P = consume_next_projectile()
		if(P)
			if(process_projectile(P, user, user, pick(BP_L_FOOT, BP_R_FOOT)))
				handle_post_fire(user, user)
				user.visible_message(
					"<span class='danger'>\The [user] shoots \himself in the foot with \the [src]!</span>",
					"<span class='danger'>You shoot yourself in the foot with \the [src]!</span>"
					)
				M.drop_item()
		else
			handle_click_empty(user)
		return 0
	if(safety)
		to_chat(M, "<span class='danger'>The gun won't fire!</span>")
		return 0
	return 1


/obj/item/weapon/gun/proc/cock_gun(mob/user)
	set waitfor = 0
	if(cocked_sound)
		sleep(5)
		if(user && loc) playsound(src.loc, cocked_sound, 100, 1)


/obj/item/weapon/gun/emp_act(severity)
	for(var/obj/O in contents)
		O.emp_act(severity)

/obj/item/weapon/gun/afterattack(atom/A, mob/living/user, adjacent, params)
	if(adjacent) return //A is adjacent, is the user, or is on the user's person

	if(!user.aiming)
		user.aiming = new(user)

	if(user && user.client && user.aiming && user.aiming.active && user.aiming.aiming_at != A)
		PreFire(A,user,params) //They're using the new gun system, locate what they're aiming at.
		return

	else
		Fire(A,user,params) //Otherwise, fire normally.

/obj/item/weapon/gun/attack(atom/A, mob/living/user, def_zone)
	if (A == user && user.zone_sel.selecting == BP_MOUTH && !mouthshoot)
		handle_suicide(user)
	else if(user.a_intent == I_HURT) //point blank shooting
		Fire(A, user, pointblank=1)
	else
		return ..() //Pistolwhippin'

/obj/item/weapon/gun/proc/Fire(atom/target, mob/living/user, clickparams, pointblank=0, reflex=0)
	if(!user || !target) return
	if(target.z != user.z) return

	add_fingerprint(user)

	if(!special_check(user))
		return

	if(world.time < next_fire_time)
		if (world.time % 3) //to prevent spam
			to_chat(user, "<span class='warning'>[src] is not ready to fire again!</span>")
		return

	var/shoot_time = (burst - 1)* burst_delay
	user.setClickCooldown(shoot_time / 3) //no clicking on things while shooting
	user.setMoveCooldown(shoot_time / 3) //no moving while shooting either
	next_fire_time = world.time + shoot_time

	var/held_twohanded = (user.can_wield_item(src) && src.is_held_twohanded(user))

	//actually attempt to shoot
	var/turf/targloc = get_turf(target) //cache this in case target gets deleted during shooting, e.g. if it was a securitron that got destroyed.
	for(var/i in 1 to burst)
		var/obj/projectile = consume_next_projectile(user)
		if(!projectile)
			handle_click_empty(user)
			break

		process_accuracy(projectile, user, target, i, held_twohanded)

		if(pointblank)
			process_point_blank(projectile, user, target)

		if(process_projectile(projectile, user, target, user.zone_sel.selecting, clickparams))
			handle_post_fire(user, target, pointblank, reflex)
			update_icon()

		if(i < burst)
			sleep(burst_delay)

		if(!(target && target.loc))
			target = targloc
			pointblank = 0

	user.setClickCooldown(DEFAULT_QUICK_COOLDOWN / 3)
	user.setMoveCooldown(move_delay / 3)

//obtains the next projectile to fire
/obj/item/weapon/gun/proc/consume_next_projectile()
	return null

//used by aiming code
/obj/item/weapon/gun/proc/can_hit(atom/target as mob, var/mob/living/user as mob)
	if(!special_check(user))
		return 2
	//just assume we can shoot through glass and stuff. No big deal, the player can just choose to not target someone
	//on the other side of a window if it makes a difference. Or if they run behind a window, too bad.
	return check_trajectory(target, user)

//called if there was no projectile to shoot
/obj/item/weapon/gun/proc/handle_click_empty(mob/user)
	if (user)
		playsound(src.loc, src.empty_sound, 80, 1)

//called after successfully firing
/obj/item/weapon/gun/proc/handle_post_fire(mob/user, atom/target, var/pointblank=0, var/reflex=0)
	if(fire_anim)
		flick(fire_anim, src)
	if(istype(user, /mob/living/carbon/human) && loud && !silenced)
		var/mob/living/carbon/human/H = user
		if(!istype(H.l_ear, /obj/item/clothing/ears/earmuffs) && !istype(H.r_ear, /obj/item/clothing/ears/earmuffs) && prob(35))
			H.ear_damage += rand(0,2)
			if (H.ear_damage >= 10)
				user.ear_deaf += rand(0,1)
				to_chat(H, "<span class='danger'>Your ears start to ring!</span>")
				H.playsound_local(H, sound('sound/weapons/flash_ring.ogg', repeat = 0, wait = 0, volume = 60, channel = 2))

	if(blowout_chance > 0)
		if(blowout_chance <= 5)
			if(prob(10))
				user.visible_message("[src] blows into pieces!", "\red <b>[src] blows into pieces!</b>")
				for(var/mob/K in viewers(usr))
					K << 'sound/effects/bang.ogg'
				del (src)
				new /obj/item/weapon/metalparts(user.loc)
				return
		else
			if (prob(10 + src.blowout_chance))
				user.visible_message("[src] blows into pieces!", "\red <b>[src] blows into pieces!</b>")
				for(var/mob/K in viewers(usr))
					K << 'sound/effects/bang.ogg'
				var/mob/living/M = user
				M.take_organ_damage(20,80)
				qdel(src)
				new /obj/item/weapon/metalparts(user.loc)
				return
			if (prob(1 + src.blowout_chance))
				user.visible_message("[src] blows into pieces!", "\red <b>[src] blows into pieces, shooting you in the face!</b>")
				for(var/mob/K in viewers(usr))
					K << 'sound/effects/bang.ogg'
				var/mob/living/M = user
				M.take_organ_damage(40,80)
				qdel(src)
				new /obj/item/weapon/metalparts(user.loc)
				return

	if(one_hand_penalty)
		if(!src.is_held_twohanded(user))
			switch(one_hand_penalty)
				if(1)
					if(prob(50)) //don't need to tell them every single time
						to_chat(user, "<span class='warning'>Your aim wavers slightly.</span>")
				if(2)
					to_chat(user, "<span class='warning'>Your aim wavers as you fire \the [src] with just one hand.</span>")
				if(3)
					to_chat(user, "<span class='warning'>You have trouble keeping \the [src] on target with just one hand.</span>")
				if(4 to INFINITY)
					to_chat(user, "<span class='warning'>You struggle to keep \the [src] on target with just one hand!</span>")
		else if(!user.can_wield_item(src))
			switch(one_hand_penalty)
				if(1)
					if(prob(50)) //don't need to tell them every single time
						to_chat(user, "<span class='warning'>Your aim wavers slightly.</span>")
				if(2)
					to_chat(user, "<span class='warning'>Your aim wavers as you try to hold \the [src] steady.</span>")
				if(3)
					to_chat(user, "<span class='warning'>You have trouble holding \the [src] steady.</span>")
				if(4 to INFINITY)
					to_chat(user, "<span class='warning'>You struggle to hold \the [src] steady!</span>")

	var/mob/living/carbon/human/H = user
	if(screen_shake || !H.arm_actuators)
		spawn()
			shake_camera(user, screen_shake/user.accstatmodifier(user.skill_ranged), screen_shake)
	update_icon()


/obj/item/weapon/gun/proc/process_point_blank(obj/projectile, mob/user, atom/target)
	var/obj/item/projectile/P = projectile
	if(!istype(P))
		return //default behaviour only applies to true projectiles

	//default point blank multiplier
	var/max_mult = 1.3

	//determine multiplier due to the target being grabbed
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		for(var/obj/item/grab/G in H.grabbed_by)
			if(G.point_blank_mult() > max_mult)
				max_mult = G.point_blank_mult()
	P.damage *= max_mult

/obj/item/weapon/gun/proc/process_accuracy(obj/projectile, mob/user, atom/target, var/burst, var/held_twohanded)
	var/obj/item/projectile/P = projectile
	if(!istype(P))
		return //default behaviour only applies to true projectiles

	var/acc_mod = burst_accuracy[min(burst, burst_accuracy.len)]
	var/disp_mod = dispersion[min(burst, dispersion.len)]
	var/stood_still = round((world.time - user.l_move_time)/15)
	if(stood_still)
		acc_mod += 1 * max(2, stood_still)
		if(stood_still > 5)
			acc_mod += accuracy

	if(one_hand_penalty)
		if(!stood_still)
			acc_mod -= 1
		if(!held_twohanded)
			acc_mod += -ceil(one_hand_penalty/2)
			disp_mod += one_hand_penalty*0.5 //dispersion per point of two-handedness

	//Accuracy modifiers
	P.accuracy = (accuracy + acc_mod) * user.accstatmodifier(user.skill_ranged)
	P.dispersion = disp_mod + (dispersion_modifyer / 2 / user.accstatmodifier(user.skill_ranged))//disp_mod see in click.dm

	//accuracy bonus from aiming
	if (aim_targets && (target in aim_targets))
		//If you aim at someone beforehead, it'll hit more often.
		//Kinda balanced by fact you need like 2 seconds to aim
		//As opposed to no-delay pew pew
		P.accuracy += 2

//does the actual launching of the projectile
/obj/item/weapon/gun/proc/process_projectile(obj/projectile, mob/user, atom/target, var/target_zone, var/params=null)
	var/obj/item/projectile/P = projectile
	if(!istype(P))
		return 0 //default behaviour only applies to true projectiles

	if(params)
		P.set_clickpoint(params)

	//shooting while in shock
	var/x_offset = 0
	var/y_offset = 0
	if(istype(user, /mob/living/carbon/human))
		var/mob/living/carbon/human/mob = user
		if(mob.shock_stage > 120)
			y_offset = rand(-2,2)
			x_offset = rand(-2,2)
		else if(mob.shock_stage > 70)
			y_offset = rand(-1,1)
			x_offset = rand(-1,1)

	var/launched = !P.launch_from_gun(target, user, src, target_zone, x_offset, y_offset)

	if(launched)
		play_fire_sound(user,P)

	return launched

/obj/item/weapon/gun/proc/play_fire_sound(var/mob/user, var/obj/item/projectile/P)
	var/turf/epicenter = get_turf(user)
	var/delay_sound = 0

	var/frequency = get_rand_frequency()
	for(var/mob/M in range(60))
		// Double check for client
		if(M && M.client)
			var/turf/M_turf = get_turf(M)
			if(M_turf && M_turf.z == epicenter.z)
				var/dist = get_dist(M_turf, epicenter)
				if(dist <= 60 && dist >= 8 && delay_sound == 0)
					var/far_volume = Clamp(60, 70, 80) // Volume is based on explosion size and dist
					far_volume += (dist <= 60 * 0.5 ? 50 : 0) // add 50 volume if the mob is pretty close to the explosion
					M.playsound_local(epicenter, dist_shot_sound, far_volume, 1, frequency, falloff = 5)
					delay_sound = 1
					spawn(100)
						delay_sound = 0
	if(istype(src,/obj/item/weapon/gun/launcher/oneuse/))
		for (var/mob/living/carbon/human/M in oview())
			var/dist = get_dist(src,M)
			if(M && M.client && dist < 6)
				shake_camera(M, 5, 1)
				playsound(M, 'sound/weapons/gunshot/rpg22.ogg', 100, 0)
				playsound(M, 'sound/weapons/flash_ring.ogg', 100, 0)

	var/shot_sound = (istype(P) && P.fire_sound)? P.fire_sound : fire_sound
	if(silenced)
		if(istype(src,/obj/item/weapon/gun/projectile/shotgun))
			playsound(user, 'sound/weapons/silencedshotgun.ogg', 50, 1, 1)
		else
			playsound(user, 'sound/weapons/silencedgun.ogg', 50, 1, 1)
	else
		playsound(user, shot_sound, 100, 1, 4)


//Suicide handling.
/obj/item/weapon/gun/var/mouthshoot = 0 //To stop people from suiciding twice... >.>
/obj/item/weapon/gun/proc/handle_suicide(mob/living/user)
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/M = user

	mouthshoot = 1
	M.visible_message("<span class='danger'>[user] sticks their gun in their mouth, ready to pull the trigger...</span>")
	if(!do_after(user, 40, progress=0))
		M.visible_message("<span class='notice'>[user] decided life was worth living</span>")
		mouthshoot = 0
		return
	var/obj/item/projectile/in_chamber = consume_next_projectile()
	if (istype(in_chamber))
		user.visible_message("<span class = 'warning'>[user] pulls the trigger.</span>")
		var/shot_sound = in_chamber.fire_sound? in_chamber.fire_sound : fire_sound
		if(silenced)
			if(istype(src,/obj/item/weapon/gun/projectile/shotgun))
				playsound(user, 'sound/weapons/silencedshotgun.ogg', 30, 1)
			else
				playsound(user, 'sound/weapons/silencedgun.ogg', 30, 1)
		else
			playsound(user, shot_sound, 90, 1, 3)
		if(istype(in_chamber, /obj/item/projectile/beam/lastertag))
			user.show_message("<span class = 'warning'>You feel rather silly, trying to commit suicide with a toy.</span>")
			mouthshoot = 0
			return

		in_chamber.on_hit(M)
		if (in_chamber.damage_type != PAIN)
			log_and_message_admins("[key_name(user)] commited suicide using \a [src]")
			user.apply_damage(in_chamber.damage*2.5, in_chamber.damage_type, BP_HEAD, 0, in_chamber.damage_flags(), used_weapon = "Point blank shot in the mouth with \a [in_chamber]")
			user.death()
		else
			to_chat(user, "<span class = 'notice'>Ow...</span>")
			user.apply_effect(110,PAIN,0)
		qdel(in_chamber)
		mouthshoot = 0
		return
	else
		handle_click_empty(user)
		mouthshoot = 0
		return

/obj/item/weapon/gun/proc/toggle_scope(mob/user, var/zoom_amount=2.0)
	//looking through a scope limits your periphereal vision
	//still, increase the view size by a tiny amount so that sniping isn't too restricted to NSEW
	var/zoom_offset = round(world.view * zoom_amount)
//	var/view_size = round(world.view + zoom_amount)
	var/scoped_accuracy_mod = zoom_offset
//view_size
	zoom(user, zoom_offset, 7)
	if(zoom)
		accuracy = scoped_accuracy + scoped_accuracy_mod
		if(screen_shake)
			screen_shake = round(screen_shake*zoom_amount+1) //screen shake is worse when looking through a scope

//make sure accuracy and screen_shake are reset regardless of how the item is unzoomed.
/obj/item/weapon/gun/zoom()
	..()
	if(!zoom)
		accuracy = initial(accuracy)
		screen_shake = initial(screen_shake)

/obj/item/weapon/gun/examine(mob/user)
	. = ..()
	if(firemodes.len > 1)
		var/datum/firemode/current_mode = firemodes[sel_mode]
		to_chat(user, "The fire selector is set to [current_mode.name].")
	if(safety)
		to_chat(user, "<span class='notice'>The safety is on.</span>")
	else
		to_chat(user, "<span class='notice'>The safety is off.</span>")

/obj/item/weapon/gun/proc/switch_firemodes()
	if(firemodes.len <= 1)
		return null

	sel_mode++
	if(sel_mode > firemodes.len)
		sel_mode = 1
	var/datum/firemode/new_mode = firemodes[sel_mode]
	new_mode.apply_to(src)
	playsound(src.loc, 'sound/weapons/gunhandling/switch.wav', 80, 1)

	return new_mode

/obj/item/weapon/gun/attack_self(mob/user)
	var/datum/firemode/new_mode = switch_firemodes(user)
	if(new_mode)
		to_chat(user, "<span class='notice'>\The [src] is now set to [new_mode.name].</span>")


//Gun safety
/obj/item/weapon/gun/AltClick(mob/user)
	..()
	if(user.incapacitated())
		to_chat(user, "<span class='warning'>You can't do that right now!</span>")
		return
	if(src == user.get_active_hand())
		safety = !safety
		playsound(user, 'sound/weapons/selector.ogg', 50, 1)
		to_chat(user, "<span class='notice'>You toggle the safety [safety ? "on":"off"].</span>")
		if(!safety)
			user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
		else
			user.client.mouse_pointer_icon = initial(user.client.mouse_pointer_icon)

//Gun pointer
/obj/item/weapon/gun/pickup(mob/user)
	..()
	if(!safety)
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")

/obj/item/weapon/gun/equipped(mob/user, var/slot)
	..()
	if(!safety && (slot == slot_l_hand || slot == slot_r_hand))
		user.client.mouse_pointer_icon = file("icons/misc/pointer.dmi")
	else
		user.client.mouse_pointer_icon = null

/obj/item/weapon/gun/dropped(mob/user)
	..()
	if(user.get_active_hand() != src)
		user.client.mouse_pointer_icon = initial(user.client.mouse_pointer_icon)