/mob/living/carbon/human/examine(mob/user)
	var/skipgloves = 0
	var/skipjumpsuit = 0
	var/skipshoes = 0
	var/skipmask = 0
	var/skipears = 0
	var/skipeyes = 0
	var/skipface = 0

	//exosuits and helmets obscure our view and stuff.
	if(wear_suit)
		skipgloves = wear_suit.flags_inv & HIDEGLOVES
		skipjumpsuit = wear_suit.flags_inv & HIDEJUMPSUIT
		skipshoes = wear_suit.flags_inv & HIDESHOES

	if(head)
		skipmask = head.flags_inv & HIDEMASK
		skipeyes = head.flags_inv & HIDEEYES
		skipears = head.flags_inv & HIDEEARS
		skipface = head.flags_inv & HIDEFACE

	if(wear_mask)
		skipface |= wear_mask.flags_inv & HIDEFACE

	//no accuately spotting headsets from across the room.
	if(get_dist(user, src) > 1)
		skipears = 1
		skipgloves = 1
		skipshoes = 1
		skipeyes = 1
	if(get_dist(user, src) > 3)
		skipjumpsuit = 1

	var/list/msg = list("<span class='info'>*---------*\nThis is ")

	var/datum/gender/T = gender_datums[get_gender()]
	if(skipjumpsuit && skipface) //big suits/masks/helmets make it hard to tell their gender
		T = gender_datums[PLURAL]
	else
		if(icon)
			msg += "\icon[icon] " //fucking BYOND: this should stop dreamseeker crashing if we -somehow- examine somebody before their icon is generated

	if(!T)
		// Just in case someone VVs the gender to something strange. It'll runtime anyway when it hits usages, better to CRASH() now with a helpful message.
		CRASH("Gender datum was null; key was '[(skipjumpsuit && skipface) ? PLURAL : gender]'")

	msg += "<EM>[src.name]</EM>"

	var/is_synth = isSynthetic()
	if(!(skipjumpsuit && skipface))
		var/species_name = "\improper "
		if(is_synth)
			species_name += "Cyborg "
		species_name += "[species.name]"
//		msg += ", <b><font color='[species.get_flesh_colour(src)]'> \a [species_name]!</font></b>"
	var/extra_species_text = species.get_additional_examine_text(src)
	if(extra_species_text)
		msg += "[extra_species_text]<br>"

	msg += "<br>"

	//uniform
	if(w_uniform && !skipjumpsuit)
		msg += "[T.He] [T.is] wearing [w_uniform.get_examine_line()].\n"

	//head
	if(head)
		msg += "[T.He] [T.is] wearing [head.get_examine_line()] on [T.his] head.\n"

	//suit/armour
	if(wear_suit)
		msg += "[T.He] [T.is] wearing [wear_suit.get_examine_line()].\n"

	if(s_store)
		msg += "[T.He] [T.is] carrying [s_store.get_examine_line()].\n"

	//belt
	if(belt)
		msg += "[T.He] [T.is] carrying [belt.get_examine_line()].\n"


	//back
	if(back)
		msg += "[T.He] [T.has] [back.get_examine_line()] on [T.his] back.\n"

	//back
	if(wear_gun)
		msg += "[T.He] [T.has] [wear_gun.get_examine_line()] on [T.his] back.\n"


	//left hand
	if(l_hand)
		msg += "[T.He] [T.is] holding [l_hand.get_examine_line()] in [T.his] left hand.\n"

	//right hand
	if(r_hand)
		msg += "[T.He] [T.is] holding [r_hand.get_examine_line()] in [T.his] right hand.\n"

	//gloves
	if(gloves && !skipgloves)
		msg += "[T.He] [T.has] [gloves.get_examine_line()] on [T.his] hands.\n"
	else if(blood_DNA)
		msg += "<span class='warning'>[T.He] [T.has] [(hand_blood_color != SYNTH_BLOOD_COLOUR) ? "blood" : "oil"]-stained hands!</span>\n"

	//shoes
	if(shoes && !skipshoes)
		msg += "[T.He] [T.is] wearing [shoes.get_examine_line()] on [T.his] feet.\n"
	else if(feet_blood_DNA)
		msg += "<span class='warning'>[T.He] [T.has] [(feet_blood_color != SYNTH_BLOOD_COLOUR) ? "blood" : "oil"]-stained feet!</span>\n"

	//mask
	if(wear_mask && !skipmask)
		msg += "[T.He] [T.has] [wear_mask.get_examine_line()] on [T.his] face.\n"

	//eyes
	if(glasses && !skipeyes)
		msg += "[T.He] [T.has] [glasses.get_examine_line()] covering [T.his] eyes.\n"

	//left ear
	if(l_ear && !skipears)
		msg += "[T.He] [T.has] [l_ear.get_examine_line()] on [T.his] left ear.\n"

	//right ear
	if(r_ear && !skipears)
		msg += "[T.He] [T.has] [r_ear.get_examine_line()] on [T.his] right ear.\n"

	//ID
//	if(wear_id)
//		msg += "[T.He] [T.is] wearing [wear_id.get_examine_line()].\n"

	//handcuffed?
	if(handcuffed)
		if(istype(handcuffed, /obj/item/weapon/handcuffs/cable))
			msg += "<span class='warning'>[T.He] [T.is] \icon[handcuffed] restrained with cable!</span>\n"
		else
			msg += "<span class='warning'>[T.He] [T.is] \icon[handcuffed] handcuffed!</span>\n"

	//buckled
	if(buckled)
		msg += "<span class='warning'>[T.He] [T.is] \icon[buckled] buckled to [buckled]!</span>\n"

	if(str > user.str && str < (user.str + 3))
		msg += "[T.He] looks stronger than you.\n"

	if(str > (user.str + 3))
		msg += "<b>[T.He] looks a lot stronger than you.</b>\n"

	if(str < user.str)
		msg += "[T.He] looks weaker than you.\n"

	//Jitters
	if(is_jittery)
		if(jitteriness >= 300)
			msg += "<span class='warning'><B>[T.He] [T.is] convulsing violently!</B></span>\n"
		else if(jitteriness >= 200)
			msg += "<span class='warning'>[T.He] [T.is] extremely jittery.</span>\n"
		else if(jitteriness >= 100)
			msg += "<span class='warning'>[T.He] [T.is] twitching ever so slightly.</span>\n"

	//splints
	for(var/organ in list(BP_L_LEG, BP_R_LEG, BP_L_ARM, BP_R_ARM))
		var/obj/item/organ/external/o = get_organ(organ)
		if(o && o.splinted && o.splinted.loc == o)
			msg += "<span class='warning'>[T.He] [T.has] \a [o.splinted] on [T.his] [o.name]!</span>\n"

	//tourniquet
	for(var/organ in list(BP_L_LEG, BP_R_LEG, BP_L_ARM, BP_R_ARM))
		var/obj/item/organ/external/o = get_organ(organ)
		if(o && o.tourniqueted && o.tourniqueted.loc == o)
			msg += "<span class='warning'>[T.He] [T.has] \a [o.tourniqueted] on [T.his] [o.name]!</span>\n"


	if(mSmallsize in mutations)
		msg += "[T.He] [T.is] small halfling!\n"

	var/distance = 0
	if(isghost(user) || user.stat == DEAD) // ghosts can see anything
		distance = 1
	else
		distance = get_dist(user,src)
	if (src.stat)
		msg += "<span class='warning'>[T.He] [T.is]n't responding to anything around [T.him] and seems to be unconscious.</span>\n"
		if((stat == DEAD || is_asystole() || src.losebreath) && distance <= 3)
			msg += "<span class='warning'>[T.He] [T.does] not appear to be breathing.</span>\n"
		if(ishuman(user) && !user.incapacitated() && Adjacent(user))
			spawn(0)
				user.visible_message("<b>\The [user]</b> checks \the [src]'s pulse.", "You check \the [src]'s pulse.")
				if(do_after(user, 15, src))
					if(pulse() == PULSE_NONE)
						to_chat(user, "<span class='deadsay'>[T.He] [T.has] no pulse.</span>")
					else
						to_chat(user, "<span class='deadsay'>[T.He] [T.has] a pulse!</span>")

	if(fire_stacks)
		msg += "[T.He] looks flammable.\n"
	if(on_fire)
		msg += "<span class='warning'>[T.He] [T.is] on fire!.</span>\n"

	var/ssd_msg = species.get_ssd(src)
	if(ssd_msg && (!should_have_organ(BP_BRAIN) || has_brain()) && stat != DEAD)
		if(!key)
			msg += "<span class='deadsay'>[T.He] [T.is] [ssd_msg]. It doesn't look like [T.he] [T.is] waking up anytime soon.</span>\n"
		else if(!client)
			msg += "<span class='deadsay'>[T.He] [T.is] [ssd_msg].</span>\n"

	var/list/wound_flavor_text = list()
	var/applying_pressure = ""
	var/list/shown_objects = list()

	for(var/organ_tag in species.has_limbs)

		var/list/organ_data = species.has_limbs[organ_tag]
		var/organ_descriptor = organ_data["descriptor"]
		var/obj/item/organ/external/E = organs_by_name[organ_tag]

		if(!E)
			wound_flavor_text[organ_descriptor] = "<b>[T.He] [T.is] missing [T.his] [organ_descriptor].</b>\n"
			continue

		wound_flavor_text[E.name] = ""

		if(E.applied_pressure == src)
			applying_pressure = "<span class='info'>[T.He] is applying pressure to [T.his] [E.name].</span><br>"

		var/obj/item/clothing/hidden
		var/list/clothing_items = list(head, wear_mask, wear_suit, w_uniform, gloves, shoes)
		for(var/obj/item/clothing/C in clothing_items)
			if(istype(C) && (C.body_parts_covered & E.body_part))
				hidden = C
				break

		if(hidden && user != src)
			if(E.status & ORGAN_BLEEDING && !(hidden.item_flags & THICKMATERIAL)) //not through a spacesuit
				wound_flavor_text[hidden.name] = "<span class='danger'>[T.He] [T.has] blood soaking through [hidden]!</span><br>"
		else
			if(E.is_stump())
				wound_flavor_text[E.name] += "<b>[T.He] [T.has] a stump where [T.his] [organ_descriptor] should be.</b>\n"
				if(E.wounds.len && E.parent)
					wound_flavor_text[E.name] += "[T.He] [T.has] [E.get_wounds_desc()] on [T.his] [E.parent.name].<br>"
			else
				if(!is_synth && E.robotic >= ORGAN_ROBOT && (E.parent && E.parent.robotic < ORGAN_ROBOT))
					wound_flavor_text[E.name] = "[T.He] [T.has] a [E.name].\n"
				var/wounddesc = E.get_wounds_desc()
				if(wounddesc != "nothing")
					wound_flavor_text[E.name] += "[T.He] [T.has] [wounddesc] on [T.his] [E.name].<br>"
		if(!hidden || distance <=1)
			if(E.dislocated > 0)
				wound_flavor_text[E.name] += "[T.His] [E.joint] is dislocated!<br>"
			if(((E.status & ORGAN_BROKEN) && E.brute_dam > E.min_broken_damage) || (E.status & ORGAN_MUTATED))
				wound_flavor_text[E.name] += "[T.His] [E.name] is dented and swollen!<br>"

		for(var/datum/wound/wound in E.wounds)
			if(wound.embedded_objects.len)
				shown_objects += wound.embedded_objects
				wound_flavor_text["[E.name]"] += "The [wound.desc] on [T.his] [E.name] has \a [english_list(wound.embedded_objects, and_text = " and \a ", comma_text = ", \a ")] sticking out of it!<br>"

	msg += "<span class='warning'>"
	for(var/limb in wound_flavor_text)
		msg += wound_flavor_text[limb]
	msg += "</span>"

	for(var/obj/implant in get_visible_implants(0))
		if(implant in shown_objects)
			continue
		msg += "<span class='danger'>[src] [T.has] \a [implant.name] sticking out of [T.his] flesh!</span>\n"
	if(digitalcamo)
		msg += "[T.He] [T.is] repulsively uncanny!\n"

	if(hasHUD(user,"security"))
		var/perpname = "wot"
		var/criminal = "None"

		if(wear_id)
			var/obj/item/weapon/card/id/I = wear_id.GetIdCard()
			if(I)
				perpname = I.registered_name
			else
				perpname = name
		else
			perpname = name

		if(perpname)
			var/datum/computer_file/crew_record/R = get_crewmember_record(perpname)
			if(R)
				criminal = R.get_criminalStatus()

			msg += "<span class = 'deptradio'>Criminal status:</span> <a href='?src=\ref[src];criminal=1'>\[[criminal]\]</a>\n"
			msg += "<span class = 'deptradio'>Security records:</span> <a href='?src=\ref[src];secrecord=`'>\[View\]</a>  <a href='?src=\ref[src];secrecordadd=`'>\[Add comment\]</a>\n"

	if(hasHUD(user,"medical"))
		var/perpname = "wot"
		var/medical = "None"

		if(wear_id)
			if(istype(wear_id,/obj/item/weapon/card/id))
				perpname = wear_id:registered_name
			else if(istype(wear_id,/obj/item/device/pda))
				var/obj/item/device/pda/tempPda = wear_id
				perpname = tempPda.owner
		else
			perpname = src.name

		var/datum/computer_file/crew_record/R = get_crewmember_record(perpname)
		if(R)
			medical = R.get_status()

		msg += "<span class = 'deptradio'>Physical status:</span> <a href='?src=\ref[src];medical=1'>\[[medical]\]</a>\n"
		msg += "<span class = 'deptradio'>Medical records:</span> <a href='?src=\ref[src];medrecord=`'>\[View\]</a> <a href='?src=\ref[src];medrecordadd=`'>\[Add comment\]</a>\n"

/*	if (mind.job)
		if (ishuman(user) && user != src)
			var/mob/living/carbon/human/H = user
			if (H.mind.job)
				if (H.mind.job.faction_tag == mind.job.faction_tag) // when you ghost, mind.assigned_job is set to null
					if (mind.job.title)
						msg += "<br><i>You recognize [T.him] as a <b>[job.title]</b>.</i>"
*/
	if(print_flavor_text()) msg += "[print_flavor_text()]\n"

	if(fraction && job)
		if(ishuman(user) && user != src)
			var/mob/living/carbon/human/H = user
			if(H.fraction == fraction)
				msg += "<br><i>You recognize [T.him] as <b>[job]</b>.</i>\n"

	if(fireteam_picked && fraction)
		if(ishuman(user) && user != src)
			var/mob/living/carbon/human/H = user
			if(H.fraction == fraction)
				if(H.fireteam_picked == fireteam_picked)
					msg += "<br><i>[T.He] is in your squad</b>.</i>\n"
				else
					msg += "<br><i>[T.He] is in </b>[fireteam_picked.name]</b>.</i>\n"
	if(wear_mask)
		skipface |= wear_mask.flags_inv & HIDEFACE

	msg += "*---------*</span><br>"
	msg += applying_pressure

	if (pose)
		if( findtext(pose,".",length(pose)) == 0 && findtext(pose,"!",length(pose)) == 0 && findtext(pose,"?",length(pose)) == 0 )
			pose = addtext(pose,".") //Makes sure all emotes end with a period.
		msg += "[T.He] [pose]"

	to_chat(user, jointext(msg, null))


//Helper procedure. Called by /mob/living/carbon/human/examine() and /mob/living/carbon/human/Topic() to determine HUD access to security and medical records.
/proc/hasHUD(mob/M as mob, hudtype)
	if(istype(M, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = M
		switch(hudtype)
			if("security")
				return istype(H.glasses, /obj/item/clothing/glasses/hud/security) || istype(H.glasses, /obj/item/clothing/glasses/sunglasses/sechud)
			if("medical")
				return istype(H.glasses, /obj/item/clothing/glasses/hud/health)
			else
				return 0
	else if(istype(M, /mob/living/silicon/robot))
		var/mob/living/silicon/robot/R = M
		switch(hudtype)
			if("security")
				return istype(R.module_state_1, /obj/item/borg/sight/hud/sec) || istype(R.module_state_2, /obj/item/borg/sight/hud/sec) || istype(R.module_state_3, /obj/item/borg/sight/hud/sec)
			if("medical")
				return istype(R.module_state_1, /obj/item/borg/sight/hud/med) || istype(R.module_state_2, /obj/item/borg/sight/hud/med) || istype(R.module_state_3, /obj/item/borg/sight/hud/med)
			else
				return 0
	else
		return 0