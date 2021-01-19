/datum/job/escalation/dayz
	title = "DAYZ Civilian"
	enabled = 0
	faction_tag = "civ"
	military_faction = CIVILIAN
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "CIVILIAN"

/datum/job/escalation/dayz/neutral
	title = "Survivor"
	name = "Survivor"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/dayz/surv
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	amount = 150
	enabled = 1
	position = "team"
	whitelist_rank = "dz_surv"
	total_positions = 150
	spawn_positions = 150
	also_known_languages = list(LANGUAGE_CZECH = 100, LANGUAGE_RUSSIAN = 5)

/datum/job/escalation/dayz/neutral_respawn
	title = "Survivor"
	name = "Survivor"
	english_name = null
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/dayz/surv
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	amount = 150
	enabled = 1
	position = "fireteam"
	whitelist_rank = "dz_surv"
	total_positions = 150
	spawn_positions = 150
	also_known_languages = list(LANGUAGE_CZECH = 100, LANGUAGE_RUSSIAN = 5)

/datum/job/escalation/dayz/czech_police
	title = "Policeman"
	name = "Policista"
	english_name = "Policeman"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/dayz/cz_police
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	amount = 3
	enabled = 1
	position = "fireteam"
	whitelist_rank = "dz_cz_police"
	total_positions = 10
	spawn_positions = 10
	also_known_languages = list(LANGUAGE_CZECH = 100, LANGUAGE_RUSSIAN = 10)