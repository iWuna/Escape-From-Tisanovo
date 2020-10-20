//USMC

/datum/job/escalation/usmc
	title = "United States Army"
	enabled = 0
	faction_tag = "usmc"
	military_faction = NATO
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "NATO"

/datum/job/escalation/usmc/usmcplatlead
	title = "USMC Platoon Leader"
	name = "Platoon Leader"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/platlead
	selection_color = "#B0C4DE"
	rank_number = 0
	position = "team"
	enabled = 1
	leading = 1
	amount = 1
	whitelist_rank = "usmc_officer"
	also_known_languages = list(LANGUAGE_GERMAN = 100, LANGUAGE_RUSSIAN = 80)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), rand(3,5), 0, rand(0,1))

/datum/job/escalation/usmc/usmcplatleaddep
	title = "USMC Platoon Leader Deputy"
	name = "Platoon Leader Deputy"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/platleaddep
	selection_color = "#B0C4DE"
	amount = 1
	rank_number = 1
	enabled = 1
	position = "team"
	whitelist_rank = "usmc_nco"
	also_known_languages = list(LANGUAGE_GERMAN = 100, LANGUAGE_RUSSIAN = 60)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcratelo
	title = "USMC Radiotelephone Operator"
	name = "Radiotelephone Operator"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/ratelo
	selection_color = "#B0C4DE"
	amount = 1
	enabled = 1
	rank_number = 2
	position = "team"
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 60, LANGUAGE_RUSSIAN = 40)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/messenger
	title = "USMC Messenger"
	name = "Messenger"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/messenger
	selection_color = "#B0C4DE"
	amount = 2
	position = "team"
	enabled = 0
	rank_number = 2
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 20, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmccorpsman
	title = "USMC Corpsman"
	name = "Corpsman"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/corpsman
	selection_color = "#B0C4DE"
	position = "team"
	enabled = 1
	amount = 3
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 30, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(0,1), 0, 0, rand(2,3), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcsurgerist
	title = "USMC Field Surgeon"
	name = "Field Surgeon"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/doctor
	selection_color = "#B0C4DE"
	amount = 1
	enabled = 1
	position = "team"
	whitelist_rank = "usmc_officer"
	also_known_languages = list(LANGUAGE_GERMAN = 100, LANGUAGE_RUSSIAN = 80)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(-1, 0), 0, 0, 4, rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/usmc/usmcmarksman
	title = "USMC Designated Marksman"
	name = "Designated Marksman"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/marksman
	selection_color = "#B0C4DE"
	position = "team"
	enabled = 0
	amount = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(3,4), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcquartermaster
	title = "USMC Quartermaster"
	name = "Quartermaster"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/quartermaster
	selection_color = "#B0C4DE"
	amount = 1
	enabled = 1
	whitelist_rank = "usmc_nco"
	also_known_languages = list(LANGUAGE_GERMAN = 100, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcmgcom
	title = "USMC HWS Commander"
	name = "Heavy Weapon Section Commander"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/hws_commander
	selection_color = "#B0C4DE"
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcmgload
	title = "USMC HWS Loader"
	name = "Heavy Weapon Loader"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/hws_loader
	selection_color = "#B0C4DE"
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcmgop
	title = "USMC HWS Operator"
	name = "Heavy Weapon Operator"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/hws_operator
	selection_color = "#B0C4DE"
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcsl
	title = "USMC Squad Leader"
	name = "Squad Leader"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/sl
	selection_color = "#B0C4DE"
	amount = 1
	rank_number = 2
	position = "fireteam"
	enabled = 1
	whitelist_rank = "usmc_nco"
	also_known_languages = list(LANGUAGE_GERMAN = 80, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/usmc/usmcftl
	title = "USMC Fireteam Leader"
	name = "Fireteam Leader"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/ftleader
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	rank_number = 6
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 40, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcfto
	title = "USMC Rifleman"
	name = "Fireteam Rifleman"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/rifleman
	selection_color = "#B0C4DE"
	rank_number = 6
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/usmc/usmcftmg
	title = "USMC Fireteam Machinegunner"
	name = "Fireteam Machinegunner"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/mgunner
	selection_color = "#B0C4DE"
	rank_number = 6
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 5)

/datum/job/escalation/usmc/usmcgrenadier
	title = "USMC Fireteam Grenadier"
	name = "Fireteam Grenadier"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/grenadier
	selection_color = "#B0C4DE"
	rank_number = 6
	position = "fireteam"
	amount = 6
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 5)

/datum/job/escalation/usmc/usmcftmga
	title = "USMC Fireteam Machinegunner Assistant"
	name = "Fireteam Machinegunner Assistant"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/coldwar/usmc/mgunnera
	selection_color = "#B0C4DE"
	rank_number = 6
	position = "fireteam"
	amount = 2
	enabled = 1
	whitelist_rank = "usmc_enlisted"
	also_known_languages = list(LANGUAGE_GERMAN = 10, LANGUAGE_RUSSIAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))


////////////////////////////////////////////////////////////////////BDW

/datum/job/escalation/bund
	title = "Bundeswehr"
	enabled = 0
	faction_tag = "bund" //The tag of the faction this job is a part of, for lookups
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes
	military_faction = NATO
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "NATO"

/datum/job/escalation/bund/bdwplatlead
	title = "BDW Zugfuhrer"
	name = "Zugfuhrår"
	english_name = "Platoon Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/platlead
	selection_color = "#4682B4"
	rank_number = 0
	position = "team"
	leading = 1
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 100, LANGUAGE_RUSSIAN = 60)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), rand(3,4), 0, rand(0,1))

/datum/job/escalation/bund/bdwplatleaddep
	title = "BDW Zugfuhrerassistant"
	name = "Zugfuhrerassistant"
	english_name = "Platoon Leader Deputy"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/platleaddep
	selection_color = "#4682B4"
	rank_number = 1
	position = "team"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_nco"
	also_known_languages = list(LANGUAGE_ENGLISH = 80, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 3, 0, rand(0,1))

/datum/job/escalation/bund/bdwratelo
	title = "BDW Funktelefonbetreiber"
	name = "Funktelefonbetreiber"
	english_name = "RATELO"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/ratelo
	selection_color = "#4682B4"
	position = "team"
	amount = 1
	rank_number = 2
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 60, LANGUAGE_RUSSIAN = 20)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwmessenger
	title = "BDW Bote"
	name = "Bote"
	english_name = "Messenger"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/messenger
	selection_color = "#4682B4"
	position = "team"
	amount = 3
	rank_number = 2
	enabled = 0
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 20, LANGUAGE_RUSSIAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwcorpsman
	title = "BDW Sanitaterschutze"
	name = "Sanitaterschutze"
	english_name = "Field Medic"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/corpsman
	selection_color = "#4682B4"
	position = "team"
	amount = 3
	rank_number = 2
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 40, LANGUAGE_RUSSIAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(0,1), 0, 0, rand(2,3), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwsurgerist
	title = "BDW Feldchirurg"
	name = "Feldchirurg"
	english_name = "Field Surgeon"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/doctor
	selection_color = "#4682B4"
	position = "team"
	amount = 1
	rank_number = 2
	enabled = 1
	whitelist_rank = "bdw_officer"
	also_known_languages = list(LANGUAGE_ENGLISH = 80, LANGUAGE_RUSSIAN = 40)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(-1, 0), rand(-1, 0), 0, 0, 4, rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/bund/bdwsl
	title = "BDW Gruppenfuhrer"
	name = "Gruppenfuhrer"
	english_name = "Squad Leader"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/sqleader
	selection_color = "#4682B4"
	position = "fireteam"
	amount = 1
	leading = 1
	enabled = 1
	whitelist_rank = "bdw_nco"
	also_known_languages = list(LANGUAGE_ENGLISH = 60, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 2, 0, rand(0,1))

/datum/job/escalation/bund/bdwsld
	title = "BDW Gruppenfuhrer Stellvertretender"
	name = "Gruppenfuhrer Stellvertretender"
	english_name = "Squad Leader Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/sqleaderdep
	selection_color = "#4682B4"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 0, 0, rand(0,1))

/datum/job/escalation/bund/bdwsm
	title = "BDW Scharfschutze"
	name = "Scharfschutze"
	english_name = "Marksman"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/marksman
	selection_color = "#4682B4"
	position = "team"
	amount = 0
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(3,4), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwmg
	title = "BDW Machinengewehrschutze"
	name = "Machinengewehrschutze"
	english_name = "Machinegunner"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/mgunner
	selection_color = "#4682B4"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/nvaddr/bdwmgas
	title = "BDW Machinengewehrschutze Stellvertretender"
	name = "Machinengewehrschutze Stellvertretender"
	english_name = "Machinegunner Assistant"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/mgunnera
	selection_color = "#FA8072"
	rank_number = 1
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwgrenadier
	title = "BDW Grenadier"
	name = "Grenadier"
	english_name = ""
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/grenadier
	selection_color = "#4682B4"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 5)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwsqradio
	title = "BDW Squad Radio Operator"
	name = "Gruppenfunker"
	english_name = "Squad RATELO"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/radioman
	selection_color = "#4682B4"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 30, LANGUAGE_RUSSIAN = 10)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/bdwrifle
	title = "BDW Schutze"
	name = "Schutze"
	english_name = "Rifleman"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/rifleman
	selection_color = "#4682B4"
	position = "fireteam"
	amount = 4
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 3)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))


/datum/job/escalation/bund/mgcom
	title = "BDW HWS Commander"
	name = "BDW Heavy Weapon Section Commander"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/sqleader
	selection_color = "#B0C4DE"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 3)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), 1, 0, rand(0,1))

/datum/job/escalation/bund/mgload
	title = "BDW HWS Loader"
	name = "BDW Heavy Weapon Loader"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/rifleman
	selection_color = "#B0C4DE"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 3)

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))

/datum/job/escalation/bund/mgop
	title = "BDW HWS Operator"
	name = "BDW Heavy Weapon Operator"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/escalation/nato/bundes/radioman
	selection_color = "#B0C4DE"
	position = "fireteam"
	amount = 1
	enabled = 1
	whitelist_rank = "bdw_enlisted"
	also_known_languages = list(LANGUAGE_ENGLISH = 10, LANGUAGE_RUSSIAN = 3)


	equip(var/mob/living/carbon/human/H)
		..()
		H.add_skills(rand(1, 2), rand(1,2), 0, 0, rand(0,1), rand(0,1), rand(0,1), -1, 0, rand(0,1))