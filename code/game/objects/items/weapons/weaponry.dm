/obj/item/weapon/nullrod
	name = "null rod"
	desc = "A rod of pure obsidian, its very presence disrupts and dampens the powers of paranormal phenomenae."
	icon_state = "nullrod"
	item_state = "nullrod"
	slot_flags = SLOT_BELT
	force = 15
	throw_speed = 1
	throw_range = 4
	throwforce = 10
	w_class = ITEM_SIZE_SMALL

/obj/item/weapon/nullrod/attack(mob/M as mob, mob/living/user as mob) //Paste from old-code to decult with a null rod.
	admin_attack_log(user, M, "Attacked using \a [src]", "Was attacked with \a [src]", "used \a [src] to attack")

	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
	user.do_attack_animation(M)
	//if(user != M)
	if(M.mind && M.mind.learned_spells)
		M.silence_spells(300) //30 seconds
		to_chat(M, "<span class='danger'>You've been silenced!</span>")
		return

	if (!(istype(user, /mob/living/carbon/human) || ticker) && ticker.mode.name != "monkey")
		to_chat(user, "<span class='danger'>You don't have the dexterity to do this!</span>")
		return

	if ((CLUMSY in user.mutations) && prob(50))
		to_chat(user, "<span class='danger'>The rod slips out of your hand and hits your head.</span>")
		user.take_organ_damage(10)
		user.Paralyse(20)
		return

	if(cult && iscultist(M))
		M.visible_message("<span class='notice'>\The [user] waves \the [src] over \the [M]'s head.</span>")
		cult.offer_uncult(M)
		return

	..()

/obj/item/weapon/nullrod/afterattack(var/atom/A, var/mob/user, var/proximity)
	if(!proximity)
		return
	if(istype(A, /turf/simulated/wall/cult))
		var/turf/simulated/wall/cult/W = A
		user.visible_message("<span class='notice'>\The [user] touches \the [A] with \the [src] and it starts fizzling and shifting.</span>", "<span class='notice'>You touch \the [A] with \the [src] and it starts fizzling and shifting.</span>")
		W.ChangeTurf(/turf/simulated/wall)

/obj/item/weapon/energy_net
	name = "energy net"
	desc = "It's a net made of green energy."
	icon = 'icons/effects/effects.dmi'
	icon_state = "energynet"
	throwforce = 0
	force = 0
	var/net_type = /obj/effect/energy_net

/obj/item/weapon/energy_net/dropped()
	..()
	spawn(10)
		if(src) qdel(src)

/obj/item/weapon/energy_net/throw_impact(atom/hit_atom)
	..()

	var/mob/living/M = hit_atom

	if(!istype(M) || locate(/obj/effect/energy_net) in M.loc)
		qdel(src)
		return 0

	var/turf/T = get_turf(M)
	if(T)
		var/obj/effect/energy_net/net = new net_type(T)
		net.capture_mob(M)
		qdel(src)

	// If we miss or hit an obstacle, we still want to delete the net.
	spawn(10)
		if(src) qdel(src)

/obj/effect/energy_net
	name = "energy net"
	desc = "It's a net made of green energy."
	icon = 'icons/effects/effects.dmi'
	icon_state = "energynet"

	density = 1
	opacity = 0
	mouse_opacity = 1
	anchored = 1
	can_buckle = 0 //no manual buckling or unbuckling

	var/health = 25
	var/countdown = 15
	var/mob/living/carbon/captured = null
	var/min_free_time = 50
	var/max_free_time = 85

/obj/effect/energy_net/teleport
	countdown = 60

/obj/effect/energy_net/New()
	..()
	GLOB.processing_objects.Add(src)

/obj/effect/energy_net/Destroy()
	if(istype(captured, /mob/living/carbon))
		if(captured.handcuffed == src)
			captured.handcuffed = null
	if(captured)
		unbuckle_mob()
	GLOB.processing_objects.Remove(src)
	captured = null
	return ..()

/obj/effect/energy_net/process()
	countdown--
	if(captured.buckled != src)
		health = 0
	if(get_turf(src) != get_turf(captured))  //just in case they somehow teleport around or
		countdown = 0
	if(countdown <= 0)
		health = 0
	healthcheck()



/obj/effect/energy_net/proc/capture_mob(mob/living/M)
	captured = M
	if(M.buckled)
		M.buckled.unbuckle_mob()
	buckle_mob(M)
	if(istype(M, /mob/living/carbon))
		var/mob/living/carbon/C = M
		if(!C.handcuffed)
			C.handcuffed = src
	return 1

/obj/effect/energy_net/post_buckle_mob(mob/living/M)
	if(buckled_mob)
		plane = ABOVE_HUMAN_PLANE
		layer = ABOVE_HUMAN_LAYER
		visible_message("\The [M] was caught in [src]!")
	else
		to_chat(M,"<span class='warning'>You are free of the net!</span>")
		reset_plane_and_layer()
		qdel(src)

/obj/effect/energy_net/proc/healthcheck()
	if(health <=0)
		set_density(0)
		if(countdown <= 0)
			visible_message("<span class='warning'>\The [src] fades away!</span>")
		else
			visible_message("<span class='danger'>\The [src] is torn apart!</span>")
		qdel(src)

/obj/effect/energy_net/bullet_act(var/obj/item/projectile/Proj)
	health -= Proj.get_structure_damage()
	healthcheck()
	return 0

/obj/effect/energy_net/ex_act()
	health = 0
	healthcheck()

/obj/effect/energy_net/attack_hand(var/mob/user)

	var/mob/living/carbon/human/H = user
	if(istype(H))
		if(H.species.can_shred(H))
			playsound(src.loc, 'sound/weapons/slash.ogg', 80, 1)
			health -= rand(10, 20)
		else
			health -= rand(1,3)

	else if (HULK in user.mutations)
		health = 0
	else
		health -= rand(5,8)

	to_chat(H,"<span class='danger'>You claw at the energy net.</span>")

	healthcheck()
	return

/obj/effect/energy_net/attackby(obj/item/weapon/W as obj, mob/user as mob)
	health -= W.force
	healthcheck()
	..()

obj/effect/energy_net/user_unbuckle_mob(mob/user)
	return escape_net(user)


/obj/effect/energy_net/proc/escape_net(mob/user as mob)
	visible_message(
		"<span class='danger'>\The [user] attempts to free themselves from \the [src]!</span>",
		"<span class='warning'>You attempt to free yourself from \the [src]!</span>"
		)
	if(do_after(user, rand(min_free_time, max_free_time), src, incapacitation_flags = INCAPACITATION_DISABLED))
		health = 0
		healthcheck()
		return 1
	else
		return 0


/obj/item/weapon/material/star/scout/	//phleg
	name = "scout"
	desc = "A very sharp knife for throwing"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "scout"
	w_class = 1.0
	throw_speed = 5
	throw_range = 5
	origin_tech = "materials=2;combat=1"
	attack_verb = list("chopped", "torn", "cut")
	applies_material_colour = 0
	force_divisor = 0.15
	thrown_force_divisor = 0.60
	weapon_speed_delay = 2
	sharpness = 5

/obj/item/weapon/brick	//phleg
	name = "brick"
	desc = "just brick"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "brick"
	w_class = 2.0
	throw_speed = 5
	throw_range = 7
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")
	weapon_speed_delay = 10

/obj/item/weapon/brick/afterattack(atom/target as mob|obj|turf|area, mob/user as mob)
	force = roll("3d6")
	throwforce = roll("3d10")
	return

/obj/item/weapon/stone	//phleg
	name = "stone"
	desc = "Just a piece of rock."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "stone1"
	w_class = 2.0
	throw_speed = 5
	throw_range = 7
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")
	weapon_speed_delay = 8

	New()
		Changestate(pick("stone1", "stone2", "stone3", "stone4"))
		return
	proc/Changestate(var/Text)
		src.icon_state = "[Text]"

/obj/item/weapon/stone/afterattack(atom/target as mob|obj|turf|area, mob/user as mob)
	force = roll("3d6")
	throwforce = roll("3d10")
	return

/obj/item/weapon/brassk	//phleg
	name = "brass knuckle"
	desc = "Increases the force of impact."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "brassk"
	w_class = 1.0
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")
	weapon_speed_delay = 6

/obj/item/weapon/brassk/afterattack(atom/target as mob|obj|turf|area, mob/user as mob)
	force = roll("4d6")
	return

/obj/item/weapon/metalparts	//phleg
	name = "metal parts"
	desc = "Just a pile of metal parts."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "metalparts"
	w_class = 2.0

/obj/item/weapon/rasp	//phleg
	name = "rasp"
	desc = "A handy tool."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "rasp"
	w_class = 2.0

/obj/item/weapon/rasp/afterattack(atom/target as mob|obj|turf|area, mob/user as mob)
	force = roll("3d10")
	return

/obj/item/weapon/lhammer	//phleg
	name = "hammer"
	desc = "Looking poor, but dangerous."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "lhammer"
	w_class = 2.0
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")
	weapon_speed_delay = 8

/obj/item/weapon/lhammer/afterattack(atom/target as mob|obj|turf|area, mob/user as mob)
	force = roll("3d10")
	return

/obj/item/weapon/material/knife/craftknife	//phleg
	name = "makeshift knife"
	desc = "So you've became smart enough to actually sharpen your tools? Good job."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "hc_knife"
	w_class = 2.0
	attack_verb = list("chopped", "torn", "cut")
	force_divisor = 0.35
	thrown_force_divisor = 0.35
	applies_material_colour = 0
	weapon_speed_delay = 4
	sharpness = 5


/obj/item/weapon/material/hatchet/crafthatchet	//phleg
	name = "makeshift hatchet"
	desc = "The base of the base. If you can't even attach a rock to a stick and call it a tool - you're not worthy to call yourself homo sapiens. It's actually very universal tool that can chop, slash and bash - depends on which edge you're hitting with."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "hc_hatchet"
	w_class = 3.0
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked", "chopped", "torn", "cut")
	force_divisor = 0.35
	thrown_force_divisor = 0.55
	applies_material_colour = 0
	sharpness = 10

/obj/item/weapon/material/sharprock
	name = "sharp rock"
	desc = "God damn it, do you really can't found something better than that?"
	icon = 'icons/obj/weapons.dmi'
	icon_state = "sharprock"
	w_class = 2.0
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked", "chopped", "torn", "cut")
	force_divisor = 0.15
	thrown_force_divisor = 0.15
	applies_material_colour = 0
	sharpness = 1
	sharp = 1


/obj/item/weapon/chainedmetal	//phleg
	name = "chained metal"
	desc = "Chained metal for handmade armor."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "chainedmetal"
	w_class = 2.0


/obj/item/weapon/chain	//phleg
	name = "chain"
	desc = "Badass weapon and improved fetter"
	icon = 'icons/obj/items.dmi'
	icon_state = "chain"
	item_state = "chain"
	slot_flags = SLOT_BELT
	w_class = 3.0
	throw_speed = 2
	throw_range = 5
	origin_tech = "materials=1"

/obj/item/weapon/chain/afterattack(atom/target as mob|obj|turf|area, mob/user as mob)
	force = roll("3d6")
	throwforce = roll("2d10")
	return


/obj/item/weapon/material/knife/sharpening
	name = "sharpening"
	desc = "Thrust, thrust, thrust."
	icon_state = "sharpening"
	w_class = 2
	icon = 'icons/obj/weapons.dmi'
	throw_speed = 3
	throw_range = 5
	applies_material_colour = 0
	weapon_speed_delay = 4
	sharpness = 2


/obj/item/weapon/lpipe	//phleg
	name = "large pipe"
	desc = "A pipe used by a thugs"
	icon_state = "lpipe"
	slot_flags = SLOT_BELT
	item_state = "crowbar"
	w_class = 2.0
	origin_tech = "engineering=1"
	attack_verb = list("attacked", "bashed", "battered", "bludgeoned", "whacked")
	weapon_speed_delay = 9

/obj/item/weapon/lpipe/New()
	force = roll("2d6")
	throwforce = roll("2d10")
	return

/obj/item/weapon/material/lstick	//phleg
	name = "stick"
	desc = "Just a stick."
	icon_state = "lstick"
	slot_flags = SLOT_BELT
	item_state = "c_tube"
	w_class = 2.0
	default_material = "wood"
	applies_material_colour = 0
	force_divisor = 0.15
	thrown_force_divisor = 0.05
	weapon_speed_delay = 9
