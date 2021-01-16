/obj/item/weapon/ore
	name = "small rock"
	icon = 'icons/obj/mining.dmi'
	icon_state = "ore2"
	randpixel = 8
	w_class = ITEM_SIZE_SMALL
	var/datum/geosample/geologic_data
	var/ore/ore = null // set to a type to find the right instance on init

/obj/item/weapon/ore/Initialize()
	. = ..()
	if(ispath(ore))
		ensure_ore_data_initialised()
		ore = ores_by_type[ore]
		if(ore.ore != type)
			log_error("[src] ([src.type]) had ore type [ore.type] but that type does not have [src.type] set as its ore item!")
		update_ore()

/obj/item/weapon/ore/proc/update_ore()
	name = ore.display_name
	icon_state = "ore_[ore.icon_tag]"
	origin_tech = ore.origin_tech.Copy()

/obj/item/weapon/ore/Value(var/base)
	. = ..()
	if(!ore)
		return
	var/material/M
	if(ore.smelts_to)
		M = get_material_by_name(ore.smelts_to)
	else if (ore.compresses_to)
		M = get_material_by_name(ore.compresses_to)
	if(!istype(M))
		return
	return 0.5*M.value*ore.result_amount

/obj/item/weapon/ore/slag
	name = "slag"
	desc = "Someone screwed up..."
	icon_state = "slag"

/obj/item/weapon/ore/uranium
	ore = /ore/uranium

/obj/item/weapon/ore/iron
	ore = /ore/hematite

/obj/item/weapon/ore/coal
	ore = /ore/coal

/obj/item/weapon/ore/glass
	ore = /ore/glass
	slot_flags = SLOT_HOLSTER

// POCKET SAND!
/obj/item/weapon/ore/glass/throw_impact(atom/hit_atom)
	..()
	var/mob/living/carbon/human/H = hit_atom
	if(istype(H) && H.has_eyes() && prob(85))
		to_chat(H, "<span class='danger'>Some of \the [src] gets in your eyes!</span>")
		H.eye_blind += 5
		H.eye_blurry += 10
		spawn(1)
			if(istype(loc, /turf/)) qdel(src)

/obj/item/weapon/ore/glass/
	ore = /ore/glass
	slot_flags = SLOT_HOLSTER

/obj/item/weapon/ore/glass/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/shovel))
		var/obj/item/weapon/shovel/C = W
		if(C.working)
			return
		var/turf/T = get_turf(src)
		for(var/obj/structure/S in T)
			if(is_type_in_typecache(S, list(/obj/structure/chezh_hangehog = TRUE, /obj/structure/brutswehr = TRUE, /obj/structure/brutswehrincomplete = TRUE, /obj/structure/sandbag/concrete_block = TRUE)))
				to_chat(user, "<span class='warning'>There is no more space.</span>")
				return FALSE
		if(istype(src, /turf/unsimulated/floor/river/deep || /turf/unsimulated/floor/river))
			to_chat(user, "\red You can't dig brustwehrs on water.")
			return 0
		C.working = 1
		playsound(src, 'sound/effects/empty_shovel.ogg', 50, 1)
		to_chat(user, "You begin to dig a brustwehr.")
		if(!C.ground >= 2)
			to_chat(user, "You need more sand on your shovel.")
			C.working = 0
			return 0
		if(!do_after(user, 20,src))
			C.working = 0
			return
		new /obj/structure/brutswehrincomplete(src.loc)
		C.update_icon()
		C.ground = 0
		C.working = 0
		qdel(src)

	else
		return ..()


/obj/item/weapon/ore/phoron
	ore = /ore/phoron

/obj/item/weapon/ore/silver
	ore = /ore/silver

/obj/item/weapon/ore/gold
	ore = /ore/gold

/obj/item/weapon/ore/diamond
	ore = /ore/diamond

/obj/item/weapon/ore/osmium
	ore = /ore/platinum

/obj/item/weapon/ore/hydrogen
	ore = /ore/hydrogen

/obj/item/weapon/ore/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/device/core_sampler))
		var/obj/item/device/core_sampler/C = W
		C.sample_item(src, user)
	else
		return ..()
