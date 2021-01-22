/datum/map/escnew
	allowed_jobs = list(/datum/job/escalation/dayz/neutral,
	/datum/job/escalation/dayz/czech_police,
	/datum/job/escalation/dayz/military_police
	)

/datum/job/escalation/dayz
	title = "Survivors"
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
	minimal_player_age = 5
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
	minimal_player_age = 5
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/dayz/surv
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	amount = 5
	enabled = 1
	position = "fireteam"
	whitelist_rank = "dz_surv"
	total_positions = 150
	spawn_positions = 150
	also_known_languages = list(LANGUAGE_CZECH = 100, LANGUAGE_RUSSIAN = 5)

/datum/job/escalation/dayz/czech_police
	title = "Policeman"
	name = "Policeman"
	english_name = null
	minimal_player_age = 5
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
	total_positions = 3
	spawn_positions = 5
	also_known_languages = list(LANGUAGE_CZECH = 100, LANGUAGE_RUSSIAN = 10)

/datum/job/escalation/dayz/military_police
	title = "Military Police"
	name = "Military Police"
	english_name = null
	minimal_player_age = 5
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/dayz/mp_police
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	amount = 3
	enabled = 1
	position = "fireteam"
	whitelist_rank = "dz_mp_police"
	total_positions = 3
	spawn_positions = 5
	also_known_languages = list(LANGUAGE_ENGLISH = 100, LANGUAGE_CZECH = 100)