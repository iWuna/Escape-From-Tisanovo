/obj/item/weapon/reagent_containers
	name = "Container"
	desc = "..."
	icon = 'icons/obj/chemical.dmi'
	icon_state = null
	w_class = ITEM_SIZE_SMALL
	var/amount_per_transfer_from_this = 5
	var/possible_transfer_amounts = "5;10;15;25;30"
	var/volume = 30
	var/label_text

/obj/item/weapon/reagent_containers/verb/set_APTFT() //set amount_per_transfer_from_this
	set name = "Set transfer amount"
	set category = "Object"
	set src in range(0)
	var/N = input("Amount per transfer from this:","[src]") as null|anything in cached_number_list_decode(possible_transfer_amounts)
	if(N)
		amount_per_transfer_from_this = N

/obj/item/weapon/reagent_containers/New()
	..()
	if(!possible_transfer_amounts)
		src.verbs -= /obj/item/weapon/reagent_containers/verb/set_APTFT
	create_reagents(volume)

/obj/item/weapon/reagent_containers/attack_self(mob/user as mob)
	return

/obj/item/weapon/reagent_containers/examine(mob/user)
	..()
	feel_temperature(user)


/obj/item/weapon/reagent_containers/proc/feel_temperature(mob/user)
	if(!reagents.total_volume)
		return

	var/feels = ""
	if(reagents.temperature < (T0C - 10))
		feels = "extremely cold"
	else if(reagents.temperature < T0C + 5)
		feels = "ice cold"
	else if(reagents.temperature < T0C + 15)
		feels = "cold"
	else if(reagents.temperature < T0C + 25)
		feels = "lukewarm"
	else if(reagents.temperature < T0C + 40)
		feels = "hot"
	else if(reagents.temperature < T0C + 60)
		feels = "very hot"
	else
		feels = "searing hot"

	to_chat(user, "[src] feels [feels] to the touch.")

/obj/item/weapon/reagent_containers/afterattack(obj/target, mob/user, flag)
	return

/obj/item/weapon/reagent_containers/proc/reagentlist() // For attack logs
	if(reagents)
		return reagents.get_reagents()
	return "No reagent holder"

/obj/item/weapon/reagent_containers/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/pen) || istype(W, /obj/item/device/flashlight/pen))
		var/tmp_label = sanitizeSafe(input(user, "Enter a label for [name]", "Label", label_text), MAX_NAME_LEN)
		if(length(tmp_label) > 10)
			to_chat(user, "<span class='notice'>The label can be at most 10 characters long.</span>")
		else
			to_chat(user, "<span class='notice'>You set the label to \"[tmp_label]\".</span>")
			label_text = tmp_label
			update_name_label()
	else
		return ..()

/obj/item/weapon/reagent_containers/proc/update_name_label()
	if(label_text == "")
		name = initial(name)
	else
		name = "[initial(name)] ([label_text])"

/obj/item/weapon/reagent_containers/proc/standard_dispenser_refill(var/mob/user, var/obj/structure/reagent_dispensers/target) // This goes into afterattack
	if(!istype(target))
		return 0

	if(!target.reagents || !target.reagents.total_volume)
		to_chat(user, "<span class='notice'>[target] is empty.</span>")
		return 1

	if(reagents && !reagents.get_free_space())
		to_chat(user, "<span class='notice'>[src] is full.</span>")
		return 1

	var/trans = target.reagents.trans_to_obj(src, target:amount_per_transfer_from_this)
	to_chat(user, "<span class='notice'>You fill [src] with [trans] units of the contents of [target].</span>")
	return 1

/obj/item/weapon/reagent_containers/proc/standard_splash_mob(var/mob/user, var/mob/target) // This goes into afterattack
	if(!istype(target))
		return

	if(user.a_intent == I_HELP)
		to_chat(user, "<span class='notice'>You can't splash people on help intent.</span>")
		return 1

	if(!reagents || !reagents.total_volume)
		to_chat(user, "<span class='notice'>[src] is empty.</span>")
		return 1

	if(target.reagents && !target.reagents.get_free_space())
		to_chat(user, "<span class='notice'>[target] is full.</span>")
		return 1

	var/contained = reagentlist()
	admin_attack_log(user, target, "Used \the [name] containing [contained] to splash the victim.", "Was splashed by \the [name] containing [contained].", "used \the [name] containing [contained] to splash")

	user.visible_message("<span class='danger'>[target] has been splashed with something by [user]!</span>", "<span class = 'notice'>You splash the solution onto [target].</span>")
	reagents.splash(target, reagents.total_volume)
	return 1

/obj/item/weapon/reagent_containers/proc/self_feed_message(var/mob/user)
	to_chat(user, "<span class='notice'>You eat \the [src]</span>")

/obj/item/weapon/reagent_containers/proc/other_feed_message_start(var/mob/user, var/mob/target)
	user.visible_message("<span class='warning'>[user] is trying to feed [target] \the [src]!</span>")

/obj/item/weapon/reagent_containers/proc/other_feed_message_finish(var/mob/user, var/mob/target)
	user.visible_message("<span class='warning'>[user] has fed [target] \the [src]!</span>")

/obj/item/weapon/reagent_containers/proc/feed_sound(var/mob/user)
	return

/obj/item/weapon/reagent_containers/proc/standard_feed_mob(var/mob/user, var/mob/target) // This goes into attack
	if(!istype(target))
		return 0

	if(!reagents || !reagents.total_volume)
		to_chat(user, "<span class='notice'>\The [src] is empty.</span>")
		return 1

	if(target == user)
		if(istype(user, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = user
			if(!H.check_has_mouth())
				to_chat(user, "Where do you intend to put \the [src]? You don't have a mouth!")
				return
			var/obj/item/blocked = H.check_mouth_coverage()
			if(blocked)
				to_chat(user, "<span class='warning'>\The [blocked] is in the way!</span>")
				return

		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN) //puts a limit on how fast people can eat/drink things
		user.bladder += amount_per_transfer_from_this //For peeing
		self_feed_message(user)
		reagents.trans_to_mob(user, issmall(user) ? ceil(amount_per_transfer_from_this/2) : amount_per_transfer_from_this, CHEM_INGEST)
		feed_sound(user)
		return 1
	else
		if(istype(user, /mob/living/carbon/human))
			var/mob/living/carbon/human/H = target
			if(!H.check_has_mouth())
				to_chat(user, "Where do you intend to put \the [src]? \The [H] doesn't have a mouth!")
				return
			var/obj/item/blocked = H.check_mouth_coverage()
			if(blocked)
				to_chat(user, "<span class='warning'>\The [blocked] is in the way!</span>")
				return

		other_feed_message_start(user, target)

		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
		if(!do_mob(user, target))
			return

		other_feed_message_finish(user, target)

		var/contained = reagentlist()
		admin_attack_log(user, target, "Fed the victim with [name] (Reagents: [contained])", "Was fed [src] (Reagents: [contained])", "used [src] (Reagents: [contained]) to feed")

		reagents.trans_to_mob(target, amount_per_transfer_from_this, CHEM_INGEST)
		feed_sound(user)
		return 1

/obj/item/weapon/reagent_containers/proc/standard_pour_into(var/mob/user, var/atom/target) // This goes into afterattack and yes, it's atom-level
	if(!target.reagents)
		return 0

	// Ensure we don't splash beakers and similar containers.
	if(!target.is_open_container() && istype(target, /obj/item/weapon/reagent_containers))
		to_chat(user, "<span class='notice'>\The [target] is closed.</span>")
		return 1
	// Otherwise don't care about splashing.
	else if(!target.is_open_container())
		return 0

	if(!reagents || !reagents.total_volume)
		to_chat(user, "<span class='notice'>[src] is empty.</span>")
		return 1

	if(!target.reagents.get_free_space())
		to_chat(user, "<span class='notice'>[target] is full.</span>")
		return 1

	var/trans = reagents.trans_to(target, amount_per_transfer_from_this)
	to_chat(user, "<span class='notice'>You transfer [trans] unit\s of the solution to \the [target].</span>")
	playsound(src,'sound/effects/Liquid_transfer_mono.ogg',50,1)
	return 1

/obj/item/weapon/reagent_containers/do_surgery(mob/living/carbon/M, mob/living/user)
	if(user.zone_sel.selecting != BP_MOUTH) //in case it is ever used as a surgery tool
		return ..()

/obj/item/weapon/reagent_containers/AltClick(var/mob/user)
	if(possible_transfer_amounts)
		if(CanPhysicallyInteract(user))
			set_APTFT()
	else
		return ..()
