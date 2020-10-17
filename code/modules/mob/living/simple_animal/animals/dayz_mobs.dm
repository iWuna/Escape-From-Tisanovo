/mob/living/simple_animal/hostile/dayz/zombie
	name = "zombie"
	desc = "B-raa-ains~"
	icon = 'icons/escalation/mob/zombie.dmi'
	icon_state = "zed1"
	icon_living = "zed1"
	icon_dead = "zed1_dead"
	icon_gib = "generic_gib"
	faction = "zombie"
	intelligence_level = SA_HUMANOID
	a_intent = I_HURT
	environment_smash = 2
	status_flags = CANPUSH
	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0
	health = 80
	run_at_them = 0
	melee_damage_lower = 10
	melee_damage_upper = 12
	melee_miss_chance = 25
	destroy_surroundings = 0
	cooperative = 1
	investigates = 1
	wander = 1
	wander_distance = 5
	assist_distance = 10
	view_range = 6
	attacktext = list("bites", "attacks")
	attack_sound = 'sound/escalation/zed/zed_attack1.ogg'
	death_sound = 'sound/escalation/zed/zed_dead1.ogg'
	say_sounds = 'sound/escalation/zed/zed_say1.ogg'
	triggered_sound = 'sound/escalation/zed/zed_triggered1.ogg'

/mob/living/simple_animal/hostile/dayz/zombie/set_target()
	. = ..()
	if(.)
		audible_emote("growls at [.]")

/mob/living/simple_animal/hostile/dayz/zombie/New()
	..()
	attack_sound = pick('sound/escalation/zed/zed_attack1.ogg',
	'sound/escalation/zed/zed_attack2.ogg',
	'sound/escalation/zed/zed_attack3.ogg',
	'sound/escalation/zed/zed_attack4.ogg',
	'sound/escalation/zed/zed_attack5.ogg',
	'sound/escalation/zed/zed_attack6.ogg',
	'sound/escalation/zed/zed_attack7.ogg',
	'sound/escalation/zed/zed_attack8.ogg',
	'sound/escalation/zed/zed_attack9.ogg',
	'sound/escalation/zed/zed_attack10.ogg')
	death_sound = pick('sound/escalation/zed/zed_dead1.ogg',
	'sound/escalation/zed/zed_dead2.ogg',
	'sound/escalation/zed/zed_dead3.ogg',
	'sound/escalation/zed/zed_dead4.ogg')
	say_sounds = pick('sound/escalation/zed/zed_say1.ogg',
	'sound/escalation/zed/zed_say2.ogg',
	'sound/escalation/zed/zed_say3.ogg',
	'sound/escalation/zed/zed_say4.ogg',)
	triggered_sound = pick('sound/escalation/zed/zed_triggered1.ogg',
	'sound/escalation/zed/zed_triggered2.ogg',
	'sound/escalation/zed/zed_triggered3.ogg',
	'sound/escalation/zed/zed_triggered4.ogg',)

/mob/living/simple_animal/hostile/dayz/zombie/civ
	speed = 6

/mob/living/simple_animal/hostile/dayz/zombie/civ/New()
	..()
	icon_state = "zed[rand(1,4)]"
	if(icon_state == "zed1")
		icon_dead = "zed_dead1"
	if(icon_state == "zed2")
		icon_dead = "zed_dead2"
	if(icon_state == "zed3")
		icon_dead = "zed_dead3"
	if(icon_state == "zed4")
		icon_dead = "zed_dead4"