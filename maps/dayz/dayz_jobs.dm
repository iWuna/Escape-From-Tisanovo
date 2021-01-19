/datum/map/escnew
	allowed_jobs = list(/datum/job/escalation/survivor/neutral, /datum/job/escalation/dayz/neutral)

/datum/job/escalation/survivor
	title = "Survivors"
	enabled = 0
	faction_tag = "surv"
	military_faction = CIVILIAN
	latejoin_at_spawnpoints = 1

/datum/job/escalation/survivor/neutral
	title = "Survivor"
	minimal_player_age = 21
	economic_modifier = 5
	ideal_character_age = 28
	outfit_type = /decl/hierarchy/outfit/job/dayz/surv
	selection_color = "#B0C4DE"
	account_allowed = 0
	announced = FALSE
	total_positions = 40
	spawn_positions = 15