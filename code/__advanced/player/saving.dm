/mob/living/carbon/human/proc/set_mob_data(var/list/loaded_data,var/do_teleport = TRUE,var/update_blends=TRUE)

	//Name
	real_name = loaded_data["name"]
	gender = loaded_data["gender"]
	species = loaded_data["species"]

	if(loaded_data["known_languages"])
		known_languages |= loaded_data["known_languages"]

	for(var/id in loaded_data["organs"]) //This does not use load_and_create object as organs are special. TODO: IT SHOULD THOUGH.
		var/o_type = loaded_data["organs"][id]["type"]
		var/obj/item/organ/O = add_organ(o_type)
		if(!O)
			log_error("Invalid Organ: [o_type].")
			continue
		if(loaded_data["organs"][id]["blend_data"])
			O.set_blend_data(loaded_data["organs"][id]["blend_data"])
		if(loaded_data["organs"][id]["inventories"])
			for(var/i=1,i<=length(loaded_data["organs"][id]["inventories"]),i++)
				var/obj/hud/inventory/I = O.inventories[i]
				I.set_inventory_data(src,loaded_data["organs"][id]["inventories"][i])
		O.update_sprite()

/*
	if(do_teleport)
		if(length(cryo_spawnpoints))
			var/obj/structure/interactive/bed/sleeper/C = pick(cryo_spawnpoints)
			force_move(get_turf(C))
			C.door_state = SLEEPER_OPENED
			C.buckle(src,silent=TRUE)
			C.door_state = SLEEPER_CLOSED
			C.update_icon()
		else if(length(backup_spawnpoints))
			var/obj/marker/backup_spawn/BS = pick(backup_spawnpoints)
			force_move(get_turf(BS))
		else
			var/obj/marker/failsafe/FS = locate() in world
			force_move(get_turf(FS))
*/

	if(update_blends)
		update_all_blends()
	else
		update_all_blends() //butts

/mob/living/carbon/human/proc/get_mob_data(var/save_inventory = TRUE,var/force=FALSE,var/died=FALSE)

	var/savedata/client/mob/M = MOBDATA(ckey)

	. = list()

	//Basic Information
	.["name"] = real_name
	.["species"] = species
	.["gender"] = gender
	.["known_languages"] = known_languages
	.["dead"] = died

	if(M && M.loaded_data)
		.["stored_mechs"] = M.loaded_data["stored_mechs"] //I hate that I have to do this.
	else
		CRASH("WARNING: Could not get_mob_data() [src.get_debug_name()]'s mechs!")

	var/final_organ_list = list()
	for(var/id in labeled_organs)
		var/obj/item/organ/O = labeled_organs[id]
		try
			final_organ_list[id] = O.save_item_data(save_inventory)
		catch(var/exception/e)
			log_error("get_mob_data:() [e] on [e.file]:[e.line]\n[e.desc]!")

	.["organs"] = final_organ_list