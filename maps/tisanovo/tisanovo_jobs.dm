/datum/map/escnew
	allowed_jobs = list(/datum/job/escalation/eft/neutral,
	/datum/job/escalation/eft/czech_police,
	/datum/job/escalation/eft/military_police
	)

/datum/job/escalation/eft
	title = "Private Military Company"
	enabled = 0
	faction_tag = "pmc"
	military_faction = PMC
	equip(var/mob/living/carbon/human/H)
		..()
		H.fraction = "PMC"

/datum/job/escalation/eft/neutral
	title = "PMC"
	name = "PMC"
	english_name = null
	minimal_player_age = 5
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/eft/merc
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

/datum/job/escalation/eft/neutral_respawn
	title = "PMC"
	name = "PMC"
	english_name = null
	minimal_player_age = 5
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/eft/merc
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

/datum/job/escalation/eft/czech_police
	title = "Policeman"
	name = "Policeman"
	english_name = null
	minimal_player_age = 5
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/eft/cz_police
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

/datum/job/escalation/eft/military_police
	title = "Military Police"
	name = "Military Police"
	english_name = null
	minimal_player_age = 5
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/eft/mp_police
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