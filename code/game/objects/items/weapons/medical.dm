////////////////////////
////Pill Pack Define////
////////////////////////
/obj/item/weapon/pill_pack
	name = "pill pack"
	desc = "Pills in sterile and handy pack."
	icon = 'icons/obj/medical.dmi'
	w_class = 1//Packed very effective
	icon_state = "pill_pack"
	var/pill_type = null
	var/pop_sound = 'sound/effects/pop_pill.ogg'

/obj/item/weapon/pill_pack/New()
	..()

	if(ispath(pill_type))
		for(var/i = 1 to 6)
			new pill_type(src)

	update_icon()

/obj/item/weapon/pill_pack/attack_hand(mob/user as mob)
	if(user.get_inactive_hand() == src)
		if(src.contents.len > 0)
			if(pop_sound)
				playsound(src.loc, pop_sound, 50, 1)
			var/obj/item/weapon/reagent_containers/pill/pill = contents[1]
			user << "<span class='notice'>You took one [pill.name] from [src.name]</span>"
			user.put_in_active_hand(pill)
			update_icon()
		else
			user << "<span class='warning'>It's empty!</span>"
	else
		..()

/obj/item/weapon/pill_pack/attack_self(mob/user as mob)
	if(src.contents.len > 0)
		var/obj/item/weapon/reagent_containers/pill/pill = contents[1]
		if(prob(30))
			if(pop_sound)
				playsound(src.loc, pop_sound, 50, 1)
			user << "<span class='notice'>You took one [pill.name] from [src.name]</span>"
			pill.loc = user.loc
			update_icon()
		else
			user << "<span class='warning'>You tried to take one [pill.name] from [src.name] by one hand but failed</span>"
	else
		user << "<span class='warning'>[name] is empty!</span>"

/obj/item/weapon/pill_pack/update_icon()
	icon_state = "[initial(icon_state)][contents.len]"

//////////////////
////Pill Packs////
//////////////////
/obj/item/weapon/pill_pack/antitox
	name = "antitoxin pill pack"
	desc = "Removes toxins and poisions from blood."
	pill_type = /obj/item/weapon/reagent_containers/pill/antitox

/obj/item/weapon/pill_pack/tetracetam
	name = "tetracetam pill pack"
	pill_type = /obj/item/weapon/reagent_containers/pill/tetracetam

/obj/item/weapon/pill_pack/oxaprofen
	name = "oxaprofen pill pack"
	pill_type = /obj/item/weapon/reagent_containers/pill/oxaprofen

/obj/item/weapon/pill_pack/antitox
	name = "antitoxin pill pack"
	desc = "Removes toxins and poisions from blood."
	pill_type = /obj/item/weapon/reagent_containers/pill/antitox

/obj/item/weapon/pill_pack/tramadol
	name = "tramadol pill pack"
	desc = "Effective painkiller."
	pill_type = /obj/item/weapon/reagent_containers/pill/tramadol

/obj/item/weapon/pill_pack/dexalin
	name = "dexalin pill pack"
	desc = "Used in cases of oxygen deprivation."
	pill_type = /obj/item/weapon/reagent_containers/pill/dexalin

/obj/item/weapon/pill_pack/bicaridine
	name = "bicaridine pill pack"
	desc = "Helps treat brute injures."
	pill_type = /obj/item/weapon/reagent_containers/pill/bicaridine

/obj/item/weapon/pill_pack/inaprovaline
	name = "inaprovaline pill pack"
	desc = "Prevents death by pain shock."
	pill_type = /obj/item/weapon/reagent_containers/pill/inaprovaline

/obj/item/weapon/pill_pack/adminordrazine
	name = "adminordrazine pill pack"
	desc = "Where did you even get that?"
	pill_type = /obj/item/weapon/reagent_containers/pill/adminordrazine

/obj/item/weapon/pill_pack/doxycycline
	name = "doxycycline pill pack"
	desc = "That's will help from the horrible death from gangrena"
	pill_type = /obj/item/weapon/reagent_containers/pill/doxycicline

/obj/item/weapon/pill_pack/phenazepam
	name = "phenazepam pill pack"
	desc = "Glory to psychonauts!"
	pill_type = /obj/item/weapon/reagent_containers/pill/phenazepam

/obj/item/weapon/pill_pack/sydnocarbum
	name = "sydnocarbum pill pack"
	desc = "For special occasions when shit got real."
	pill_type = /obj/item/weapon/reagent_containers/pill/sydnocarbum

/obj/item/weapon/pill_pack/amidopyrinum
	name = "amidopyrinum pill pack"
	desc = "Will help you not bit off your own tongue when you get a pain shock."
	pill_type = /obj/item/weapon/reagent_containers/pill/amidopyrinum

/obj/item/weapon/pill_pack/paracetamol
	name = "paracetamol pill pack"
	desc = "Such a useless stuff!"
	pill_type = /obj/item/weapon/reagent_containers/pill/paracetamol

/obj/item/weapon/pill_pack/naloxone
	name = "naloxone pill pack"
	desc = "You have no idea what's that."
	pill_type = /obj/item/weapon/reagent_containers/pill/naloxone

/obj/item/weapon/pill_pack/promethazine
	name = "promethazine pill pack"
	desc = "You have no idea what's that."
	pill_type = /obj/item/weapon/reagent_containers/pill/promethazine

/obj/item/weapon/pill_pack/ethaperazine
	name = "ethaperazine pill pack"
	desc = "You have no idea what's that."
	pill_type = /obj/item/weapon/reagent_containers/pill/ethaperazine


//////////////////////////
////Gauze Packs Define////
//////////////////////////

/obj/item/weapon/gauze_pack
	name = "pack of nothing"
	desc = "Contains nothing."
	icon = 'icons/obj/medical.dmi'
	w_class = 1 //Packed very effective
	var/content_type = null
	var/packed = 1
	var/rip_sound = 'sound/effects/rip_pack.ogg'

/obj/item/weapon/gauze_pack/New()
	..()

	if(ispath(content_type))
		new content_type(src)

	update_icon()

/obj/item/weapon/gauze_pack/attack_hand(mob/user as mob)
	if(user.get_inactive_hand() == src && packed)
		packed = 0
		if(rip_sound)
			playsound(src.loc, rip_sound, 50, 1)
		if(contents.len)
			var/obj/O = contents[1]
			user.put_in_active_hand(O)
			to_chat(user, "<span class='notice'>You ripped the [src.name] and took out an [O.name].</span>")
		else
			to_chat(user, "<span class='warning'>You ripped the [src.name] but it's empty!</span>")
		update_icon()
	else
		..()

/obj/item/weapon/gauze_pack/attack_self(mob/user as mob)
	if(packed)
		if(prob(50))
			packed = 0
			if(rip_sound)
				playsound(src.loc, rip_sound, 50, 1)
			if(contents.len)
				var/obj/O = contents[1]
				O.loc = user.loc
				to_chat(user, "<span class='notice'>You ripped the [src.name] by one hand and [O] falls out.</span>")
			update_icon()
		else
			to_chat(user, "<span class='warning'>You tried to rip the [src.name] but failed!</span>")
	else
		to_chat(user, "<span class='warning'>[name] is already unpacked!</span>")

/obj/item/weapon/gauze_pack/update_icon()
	icon_state = "[initial(icon_state)][packed]"

///////////////////
////Gauze Packs////
///////////////////

/obj/item/weapon/gauze_pack/ipp
	name = "'IPP'"
	desc = "That's the Individualniy Perevyazochniy Paket. Contains sterile gauze."
	icon_state = "bint_pack"
	content_type = /obj/item/stack/medical/bruise_pack/bint

/obj/item/stack/medical/bruise_pack/bint
	name = "roll of gauze"
	singular_name = "bint length"
	icon = 'icons/obj/medical.dmi'
	icon_state = "bint"


/obj/item/weapon/gauze_pack/gauze
	name = "M56 bandage pack"
	desc = "Contains sterile bandage."
	icon_state = "gauze_pack"
	content_type = /obj/item/stack/medical/bruise_pack/gauze

/obj/item/stack/medical/bruise_pack/gauze
	name = "roll of bandage"
	singular_name = "gauze length"
	icon = 'icons/obj/medical.dmi'
	icon_state = "gauze"

//pills here

/obj/item/weapon/storage/box/pill_box
	name = "pill box"
	icon_state = "pillbox"
	icon = 'icons/obj/medical.dmi'
	w_class = 2
	max_w_class = 1
	max_storage_space = 5
	can_hold = list(/obj/item/weapon/pill_pack/)


/obj/item/weapon/storage/box/pill_box/tetracetam
	name = "tetracetam pill box"
	max_storage_space = 2
	startswith = list(/obj/item/weapon/pill_pack/tetracetam = 2)

/obj/item/weapon/storage/box/pill_box/oxaprofen
	name = "oxaprofen pill box"
	max_storage_space = 4
	startswith = list(/obj/item/weapon/pill_pack/oxaprofen = 4)

//ampules

/obj/item/weapon/storage/box/ampule_box
	name = "ampule box"
	icon_state = "ampulebox"
	icon = 'icons/obj/medical.dmi'
	w_class = 2
	max_w_class = 1
	max_storage_space = 2
	can_hold = list(/obj/item/weapon/ampule_pack/)

/obj/item/weapon/storage/box/ampule_box/morphine
	name = "morphine ampule pack"
	startswith = list(/obj/item/weapon/ampule_pack/morphine = 2)

/obj/item/weapon/storage/box/ampule_box/epinephrine
	name = "epinephrine ampule pack"
	startswith = list(/obj/item/weapon/ampule_pack/epinephrine = 2)

/obj/item/weapon/storage/box/ampule_box/naltamine
	name = "naltamine ampule pack"
	startswith = list(/obj/item/weapon/ampule_pack/naltamine = 2)

/obj/item/weapon/storage/box/ampule_box/talotropine
	name = "talotropine ampule pack"
	startswith = list(/obj/item/weapon/ampule_pack/talotropine = 2)

/obj/item/weapon/storage/box/ampule_box/aminocaproic
	name = "aminocaproic acid ampule pack"
	startswith = list(/obj/item/weapon/ampule_pack/aminocaproic = 2)




/obj/item/weapon/ampule_pack
	name = "ampule pack"
	desc = "That's an ampule pack."
	icon = 'icons/obj/medical.dmi'
	w_class = 1
	icon_state = "ampule_pack"
	var/ampule_type = null

/obj/item/weapon/ampule_pack/New()
	..()

	if(ispath(ampule_type))
		for(var/i = 1 to 5)
			new ampule_type(src)

	update_icon()

/obj/item/weapon/ampule_pack/attack_hand(mob/user as mob)
	if(user.get_inactive_hand() == src)
		if(src.contents.len > 0)
			var/obj/item/weapon/reagent_containers/glass/ampule/ampule = contents[1]
			user << "<span class='notice'>You took one [ampule.name] from [src.name]</span>"
			user.put_in_active_hand(ampule)
			update_icon()
		else
			user << "<span class='warning'>It's empty!</span>"
	else
		..()

/obj/item/weapon/ampule_pack/attack_self(mob/user as mob)
	if(src.contents.len > 0)
		var/obj/item/weapon/reagent_containers/glass/ampule/ampule = contents[1]
		if(prob(30))
			user << "<span class='notice'>You took one [ampule.name] from [src.name]</span>"
			ampule.loc = user.loc
			update_icon()
		else
			user << "<span class='warning'>You tried to take one [ampule.name] from [src.name] by one hand but failed</span>"
	else
		user << "<span class='warning'>[name] is empty!</span>"

/obj/item/weapon/ampule_pack/update_icon()
	icon_state = "[initial(icon_state)][contents.len]"


/obj/item/weapon/ampule_pack/morphine
	name = "morphine ampule pack"
	ampule_type = /obj/item/weapon/reagent_containers/glass/ampule/morphine

/obj/item/weapon/ampule_pack/epinephrine
	name = "epinephrine ampule pack"
	ampule_type = /obj/item/weapon/reagent_containers/glass/ampule/epinephrine

/obj/item/weapon/ampule_pack/naltamine
	name = "naltamine ampule pack"
	ampule_type = /obj/item/weapon/reagent_containers/glass/ampule/naltamine

/obj/item/weapon/ampule_pack/talotropine
	name = "talotropine ampule pack"
	ampule_type = /obj/item/weapon/reagent_containers/glass/ampule/talotropine

/obj/item/weapon/ampule_pack/aminocaproic
	name = "aminocaproic acid ampule pack"
	ampule_type = /obj/item/weapon/reagent_containers/glass/ampule/aminocaproic

//pillboxes

/obj/item/weapon/storage/box/pill_box/phenazepam
	name = "phenamepam pill box"
	startswith = list(/obj/item/weapon/pill_pack/phenazepam = 2)

/obj/item/weapon/storage/box/pill_box/amidopyrinum
	name = "amidopyrinum pill box"
	startswith = list(/obj/item/weapon/pill_pack/amidopyrinum = 2)

/obj/item/weapon/storage/box/pill_box/naloxone
	name = "naloxone pill box"
	startswith = list(/obj/item/weapon/pill_pack/naloxone = 2)

/obj/item/weapon/storage/box/pill_box/promethazine
	name = "promethazine pill box"
	startswith = list(/obj/item/weapon/pill_pack/promethazine = 2)

/obj/item/weapon/storage/box/pill_box/doxycycline
	name = "doxycycline pill box"
	startswith = list(/obj/item/weapon/pill_pack/doxycycline = 2)

/obj/item/weapon/storage/box/pill_box/sydnocarbum
	name = "sydnocarbum pill box"
	startswith = list(/obj/item/weapon/pill_pack/sydnocarbum = 2)

/obj/item/weapon/storage/box/pill_box/paracetamol
	name = "paracetamol pill box"
	startswith = list(/obj/item/weapon/pill_pack/paracetamol = 2)

/obj/item/weapon/storage/box/pill_box/ethaperazine
	name = "ethaperazine pill box"
	startswith = list(/obj/item/weapon/pill_pack/ethaperazine = 2)


