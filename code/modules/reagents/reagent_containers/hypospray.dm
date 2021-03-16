////////////////////////////////////////////////////////////////////////////////
/// HYPOSPRAY
////////////////////////////////////////////////////////////////////////////////

/obj/item/weapon/reagent_containers/hypospray
	name = "hypospray"
	desc = "The DeForest Medical Corporation hypospray is a sterile, air-needle autoinjector for rapid administration of drugs to patients."
	icon = 'icons/obj/syringe.dmi'
	item_state = "hypo"
	icon_state = "hypo"
	amount_per_transfer_from_this = 5
	unacidable = 1
	volume = 30
	possible_transfer_amounts = null
	flags = OPENCONTAINER
	slot_flags = SLOT_BELT

///obj/item/weapon/reagent_containers/hypospray/New() //comment this to make hypos start off empty
//	..()
//	reagents.add_reagent(/datum/reagent/tricordrazine, 30)
//	return

/obj/item/weapon/reagent_containers/hypospray/do_surgery(mob/living/carbon/M, mob/living/user)
	if(user.a_intent != I_HELP) //in case it is ever used as a surgery tool
		return ..()
	attack(M, user)
	return 1

/obj/item/weapon/reagent_containers/hypospray/attack(mob/living/M as mob, mob/user as mob)
	if(!reagents.total_volume)
		to_chat(user, "<span class='warning'>[src] is empty.</span>")
		return
	if (!istype(M))
		return
	var/mob/living/carbon/human/H = M
	if(istype(H))
		var/obj/item/organ/external/affected = H.get_organ(user.zone_sel.selecting)
		if(!affected)
			to_chat(user, "<span class='danger'>\The [H] is missing that limb!</span>")
			return
		else if(affected.robotic >= ORGAN_ROBOT)
			to_chat(user, "<span class='danger'>You cannot inject a robotic limb.</span>")
			return
	user.setClickCooldown(DEFAULT_QUICK_COOLDOWN)
	user.do_attack_animation(M)
	to_chat(user, "<span class='notice'>You inject [M] with [src].</span>")
	to_chat(M, "<span class='notice'>You feel a tiny prick!</span>")
	user.visible_message("<span class='warning'>[user] injects [M] with [src].</span>")
	playsound(user.loc, 'sound/items/interactions/hypospray.wav', 40, 1)

	if(M.reagents)
		var/contained = reagentlist()
		var/trans = reagents.trans_to_mob(M, amount_per_transfer_from_this, CHEM_BLOOD)
		admin_inject_log(user, M, src, contained, trans)
		to_chat(user, "<span class='notice'>[trans] units injected. [reagents.total_volume] units remaining in \the [src].</span>")

	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector
	name = "autoinjector"
	desc = "A rapid and safe way to administer small amounts of drugs by untrained or trained personnel."
	icon_state = "blue"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 5
	var/list/starts_with = list(/datum/reagent/inaprovaline = 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/New()
	..()
	for(var/T in starts_with)
		reagents.add_reagent(T, starts_with[T])
	update_icon()
	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector/attack(mob/M as mob, mob/user as mob)
	..()
	if(reagents.total_volume <= 0) //Prevents autoinjectors to be refilled.
		flags &= ~OPENCONTAINER
	update_icon()
	return

/obj/item/weapon/reagent_containers/hypospray/autoinjector/update_icon()
	if(reagents.total_volume > 0)
		icon_state = "[initial(icon_state)]1"
	else
		icon_state = "[initial(icon_state)]0"

/obj/item/weapon/reagent_containers/hypospray/autoinjector/examine(mob/user)
	. = ..(user)
	if(reagents && reagents.reagent_list.len)
		to_chat(user, "<span class='notice'>It is currently loaded.</span>")
	else
		to_chat(user, "<span class='notice'>It is spent.</span>")

/obj/item/weapon/reagent_containers/hypospray/autoinjector/detox
	name = "autoinjector (antitox)"
	icon_state = "green"
	starts_with = list(/datum/reagent/dylovene = 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/pain
	name = "autoinjector (painkiller)"
	icon_state = "purple"
	starts_with = list(/datum/reagent/tramadol = 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combatpain
	name = "autoinjector (oxycodone)"
	icon_state = "black"
	starts_with = list(/datum/reagent/tramadol/oxycodone = 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/ethanol
	name = "autoinjector (ethanol)"
	icon_state = "black"
	starts_with = list(/datum/reagent/ethanol = 5)


/obj/item/weapon/reagent_containers/syrette
	name = "syrette"
	desc = "That's the one-use syringe used for quick injection of medications."
	icon_state = "syrette"
	item_state = "autoinjector"
	amount_per_transfer_from_this = 5
	volume = 5
	icon = 'icons/obj/syringe.dmi'
	var/closed = 1

/obj/item/weapon/reagent_containers/syrette/New()
	..()
	update_icon()
	return

/obj/item/weapon/reagent_containers/syrette/attack(mob/M as mob, mob/user as mob)
	..()
	if(reagents.total_volume <= 0) //Prevents autoinjectors to be refilled.
		flags &= ~OPENCONTAINER
	update_icon()
	return

/obj/item/weapon/reagent_containers/syrette/update_icon()
	if(closed)
		icon_state = "[initial(icon_state)]_closed"
	else
		icon_state = "[initial(icon_state)]"

/obj/item/weapon/reagent_containers/syrette/attack_self(mob/user as mob)
	if(closed)
		if(prob(20))
			closed = 0
			user << "<span class='warning'>You open the [src.name].</span>"
			update_icon()
		else
			user << "<span class='warning'>You tried to open the [src.name] but failed!</span>"
	else
		user << "<span class='warning'>[name] is already unpacked!</span>"


/obj/item/weapon/reagent_containers/syrette/examine(mob/user)
	..(user)
	if(reagents && reagents.reagent_list.len)
		to_chat(user, "<span class='notice'>It is currently loaded.</span>")
	else
		to_chat(user, "<span class='notice'>It is spent.</span>")

/obj/item/weapon/reagent_containers/syrette/attack(mob/living/M as mob, mob/user as mob)
	if(!reagents.total_volume)
		to_chat(user, "<span class='warning'>[src] is empty.</span>")
		return
	if (!istype(M))
		return
	if (closed)
		to_chat(user, "<span class='warning'>[src] is closed.</span>")
		return

	var/mob/living/carbon/human/H = M
	if(istype(H))
		user.setClickCooldown(30)
		if(!do_after(user, 20, src))
			to_chat(user, "<span class='danger'>You must stand still to use the [src]!</span>")
			return
		var/obj/item/organ/external/affected = H.get_organ(user.zone_sel.selecting)
		if(!affected)
			to_chat(user, "<span class='danger'>\The [H] is missing that limb!</span>")
			return
		else if(affected.robotic >= ORGAN_ROBOT)
			to_chat(user, "<span class='danger'>You cannot inject a robotic limb.</span>")
			return

		user.do_attack_animation(M)
		to_chat(user, "<span class='notice'>You inject [M] with [src].</span>")
		to_chat(M, "<span class='notice'>You feel a tiny prick!</span>")

		if(M.reagents)
			var/contained = reagentlist()
			var/trans = reagents.trans_to_mob(M, amount_per_transfer_from_this, CHEM_BLOOD)
			admin_inject_log(user, M, src, contained, trans)
			to_chat(user, "<span class='notice'>[trans] units injected. [reagents.total_volume] units remaining in \the [src].</span>")

		return

/obj/item/weapon/reagent_containers/syrette/morphine
	name = "morphine syrette"

	New()
		..()
		reagents.add_reagent(/datum/reagent/morphine, 5)



/obj/item/weapon/reagent_containers/syrette/promedolum
	name = "promedolum syrette"

	New()
		..()
		reagents.add_reagent(/datum/reagent/morphine, 2)
		reagents.add_reagent(/datum/reagent/tramadol, 3)

//////////////////////////////
////Combat Injector Define////
//////////////////////////////
/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat
	name = "combat autoinjector"
	icon = 'icons/obj/medical.dmi'
	icon_state = "injector_red"
	volume = 5

	var/cap_color = "red"
	var/obj/item/weapon/injector_cap/cap = null

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/New()
	..()
	cap = new /obj/item/weapon/injector_cap (src, cap_color)
	update_icon()

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/attack(mob/M as mob, mob/user as mob)
	if(cap)
		user << "<span class='warning'>Remove cap first!</span>"
	else
		..()

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/attack_hand(mob/user as mob)
	if(cap && user.get_inactive_hand() == src)
		to_chat(user, "<span class='notice'>You removed the cap.</span>")
		user.put_in_active_hand(cap)
		cap = null
		update_icon()
	else
		..()

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/attack_self(mob/user as mob)
	if(cap)
		if(prob(50))
			to_chat(user, "<span class='warning'>You tried to remove the cap by one hand but failed!</span>")
		else
			to_chat(user, "<span class='notice'>You removed the cap.</spam>")
			cap.loc = user.loc
			cap = null
			update_icon()
	else
		..()

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/update_icon()
	if(reagents.total_volume >= 0)
		if(cap)
			icon_state = "injector_[cap_color]"
		else
			icon_state = "injector_full"
	else
		icon_state = "injector_empty"

/obj/item/weapon/injector_cap
	name = "injector cap"
	icon = 'icons/obj/medical.dmi'
	icon_state = "cap_red"

/obj/item/weapon/injector_cap/New(var/loc, var/color)
	..()
	icon_state = "[color]_cap"

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/inaprovaline
	name = "inaprovaline injector"
	cap_color = "red"

	New()
		..()
		reagents.add_reagent("inaprovaline", 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/bicaridine
	name = "bicaridine injector"
	cap_color = "blue"

	New()
		..()
		reagents.add_reagent("bicaridine", 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/peridaxon
	name = "peridaxon injector"
	cap_color = "green"

	New()
		..()
		reagents.add_reagent("peridaxon", 5)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/promedolum
	name = "promedolum autoinjector"
	cap_color = "green"

	New()
		..()
		reagents.add_reagent("morphine", 2)
		reagents.add_reagent("methylphenidate", 1)
		reagents.add_reagent("tramadol", 2)

/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/epinephrine
	name = "epinephrine autoinjector"
	cap_color = "blue"

	New()
		..()
		reagents.add_reagent("adrenaline", 5)