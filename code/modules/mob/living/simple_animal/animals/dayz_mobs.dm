#define COMPOST_TIME 1000

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
	cooperative = 0
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

/mob/living/simple_animal/hostile/dayz/zombie/PunchTarget()
	. =..()
	var/mob/living/carbon/human/H = .
	if(istype(H))
		if(prob(15))
			to_chat(., "[src] bites your neck!")


/mob/living/simple_animal/hostile/dayz/zombie/death()
	. = ..()
	spawn(COMPOST_TIME)
		new/obj/effect/gibspawner/human(get_turf(src))
		qdel(src)

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
	icon_state = "zed[rand(1,10)]"
	if(icon_state == "zed1")
		icon_dead = "zed_dead1"
	if(icon_state == "zed2")
		icon_dead = "zed_dead2"
	if(icon_state == "zed3")
		icon_dead = "zed_dead3"
	if(icon_state == "zed4")
		icon_dead = "zed_dead4"
	if(icon_state == "zed5")
		icon_dead = "zed_dead5"
	if(icon_state == "zed6")
		icon_dead = "zed_dead6"
	if(icon_state == "zed7")
		icon_dead = "zed_dead7"
	if(icon_state == "zed8")
		icon_dead = "zed_dead8"
	if(icon_state == "zed9")
		icon_dead = "zed_dead9"
	if(icon_state == "zed10")
		icon_dead = "zed_dead10"

/mob/living/simple_animal/hostile/dayz/zombie/police
	name = "policeman zombie"
	desc = "Once he was a policeman, but now he's just a brainless stupid shell with blood in jaws. He is thicc..."
	icon_state = "zed_police1"
	speed = 6
	wander_distance = 6
	view_range = 7
	health = 100

/mob/living/simple_animal/hostile/dayz/zombie/police/New()
	..()
	icon_state = "zed_police[rand(1,2)]"
	if(icon_state == "zed_police1")
		icon_dead = "zed_policedead1"
	if(icon_state == "zed_police2")
		icon_dead = "zed_policedead2"

/mob/living/simple_animal/hostile/dayz/zombie/soldier
	name = "zombie soldier"
	desc = "Once he was a soldier, but now he's just a brainless shell resembling a human. Good physical training in a previous life still makes itself felt."
	icon_state = "zed_army1"
	speed = 7
	cooperative = 1
	wander_distance = 8
	view_range = 8
	health = 130

/mob/living/simple_animal/hostile/dayz/zombie/soldier/New()
	..()
	icon_state = "zed_army[rand(1,4)]"
	if(icon_state == "zed_army1")
		icon_dead = "zed_armydead1"
	if(icon_state == "zed_army2")
		icon_dead = "zed_armydead2"
	if(icon_state == "zed_army3")
		icon_dead = "zed_armydead3"
	if(icon_state == "zed_army4")
		icon_dead = "zed_armydead4"

/mob/living/simple_animal/hostile/dayz/zombie/soldier/armored
	desc = "Wait, he's wearing armor?!"
	speed = 6
	view_range = 7
	health = 180
	icon_state = "zed_armored_army1"

/mob/living/simple_animal/hostile/dayz/zombie/soldier/armored/New()
	..()
	icon_state = "zed_armored_army[rand(1,2)]"
	if(icon_state == "zed_armored_army1")
		icon_dead = "zed_armored_armydead1"
	if(icon_state == "zed_armored_army2")
		icon_dead = "zed_armored_armydead2"

/mob/living/simple_animal/hostile/dayz/zombie/soldier_nato
	name = "zombie soldier"
	desc = "Once he was a soldier, but now he's just a brainless shell resembling a human. Good physical training in a previous life still makes itself felt."
	icon_state = "zed_army_nato3"
	speed = 7
	cooperative = 1
	wander_distance = 8
	view_range = 8
	health = 130

/mob/living/simple_animal/hostile/dayz/zombie/soldier_nato/New()
	..()
	icon_state = "zed_army_nato[rand(1,4)]"
	if(icon_state == "zed_army_nato1")
		icon_dead = "zed_army_nato1_dead"
	if(icon_state == "zed_army_nato2")
		icon_dead = "zed_army_nato2_dead"
	if(icon_state == "zed_army_nato3")
		icon_dead = "zed_army_nato3_dead"
	if(icon_state == "zed_army_nato4")
		icon_dead = "zed_army_nato4_dead"

/mob/living/simple_animal/hostile/dayz/zombie/soldier/set_target()
	. = ..()
	if(.)
		audible_emote("unintelligible growls at [.]")

///NPC///

/mob/living/simple_animal/hostile/dayz/human
	icon = 'icons/escalation/mob/npc.dmi'
	ranged = 1
	speed = 6
	cooperative = 1
	view_range = 10
	health = 150
	destroy_surroundings = 0
	icon_gib = "generic_gib"
	faction = "human"
	intelligence_level = SA_HUMANOID
	a_intent = I_HURT
	environment_smash = 2
	status_flags = CANPUSH
	investigates = 1
	wander = 1
	wander_distance = 5
	assist_distance = 10
	firing_lines = 1
	returns_home = 1
	reacts = 1
	speak_chance = 50
	speak = list("Drive to bylo jednodussi...",
				"Chci domu k matce.",
				"Chybi mi stary zivot",
				"Jednou se Cesko ozivi",
				"Munice brzy skonci",
				"Smrad kvuli Zedum.")
	emote_hear = list("sniffs","coughs")
	emote_see = list("looks around","checks his equipment")
	say_understood = list()
	say_cannot = list()
	say_maybe_target = list("Slysel jsi to?","Vypada to, ze tu nekdo je.","Co je to za hluk?","Hmm?")
	say_got_target = list("Palte, je tu Marauder!","Kontakt s protivnikem","cil odhalen","Nasel!","Mozna nakazeny! Ohen!","Strelejte!","Zavolej posily!","Svine, protivniku!","Budes litovat, ze jsi to prezil, ty bastarde!")
	reactions = list("Cesko" = "volny!")
	melee_damage_lower = 10
	melee_damage_upper = 12
	melee_miss_chance = 45
	gender = MALE

/mob/living/simple_animal/hostile/dayz/human/New()
	..()
	var/first_name = pick(first_names_male_czech)
	var/second_name = pick(last_names_czech)
	name = "[first_name] [second_name]"

/mob/living/simple_animal/hostile/dayz/human/nato
	name = "NATO soldier"
	icon_state = "nato_sld1"
	shoot_range = 9
	faction = "neutral"
	rapid = 1
	projectiletype = /obj/item/projectile/bullet
	projectilesound = 'sound/weapons/gunshot/ak74.ogg'
	speak = list("We running out of supplies soon, shit...",
				"When all this end?",
				"We need to support survivors. They are our hope!",
				"Where's this damn chopper?",
				"Czech army kinda assholes.",
				"This place are safest.")
	say_maybe_target = list("Did you hear that?","There's someone near.","What?","Hmm?")
	say_got_target = list("Contact!","Enemy spotted!","Fire!","Find him!","Enemy! Fire!","Call for help!","Fire! Fire! Fire!","We got situation here!")
	armor = list(
				"melee" = 25,
				"bullet" = 60,
				"laser" = 0,
				"energy" = 0,
				"bomb" = 0,
				"bio" = 100,
				"rad" = 100)

/mob/living/simple_animal/hostile/dayz/human/nato/New()
	..()
	var/first_name = pick(first_names_male_usmc)
	var/second_name = pick(last_names_usmc)
	name = "[first_name] [second_name]"
	icon_state = "nato_sld[rand(1,3)]"
	if(icon_state == "nato_sld1")
		icon_dead = "nato_sld1_dead"
	if(icon_state == "nato_sld2")
		icon_dead = "nato_sld2_dead"
	if(icon_state == "nato_sld3")
		icon_dead = "nato_sld3_dead"

///сюжетный///
/mob/living/simple_animal/hostile/dayz/human/czech_deserter_family
	desc = "This is alive human, but he's very angry..."
	reactions = list("Ahoj, jak se mas s rodinou?" = "Je to nechutne, dcera se nakazila tou cholerou.")
	projectiletype = /obj/item/projectile/bullet
	projectilesound = 'sound/weapons/gunshot/ak74.ogg'
	shoot_range = 8
	rapid = 1
	armor = list(
				"melee" = 25,
				"bullet" = 50,
				"laser" = 0,
				"energy" = 0,
				"bomb" = 0,
				"bio" = 100,
				"rad" = 100)

/mob/living/simple_animal/hostile/dayz/human/deserter_pistol
	name = "czech deserter"
	desc = "This is alive human, but he's very angry..."
	icon_state = "dezertirpistol1"
	projectiletype = /obj/item/projectile/bullet
	projectilesound = 'sound/weapons/gunshot/makarov.ogg'
	shoot_range = 6

/mob/living/simple_animal/hostile/dayz/human/deserter_pistol/New()
	..()
	icon_state = "dezertirpistol[rand(1,3)]"
	if(icon_state == "dezertirpistol1")
		icon_dead = "dezertirpistol1_dead"
	if(icon_state == "dezertirpistol2")
		icon_dead = "dezertirpistol2_dead"
	if(icon_state == "dezertirpistol3")
		icon_dead = "dezertirpistol3_dead"

/mob/living/simple_animal/hostile/dayz/human/deserter_vz
	name = "czech deserter"
	desc = "This is alive human, but he's very angry..."
	icon_state = "dezertirvz1"
	projectiletype = /obj/item/projectile/bullet
	projectilesound = 'sound/weapons/gunshot/ak74.ogg'
	shoot_range = 8
	rapid = 1
	armor = list(
				"melee" = 25,
				"bullet" = 50,
				"laser" = 0,
				"energy" = 0,
				"bomb" = 0,
				"bio" = 100,
				"rad" = 100)


/mob/living/simple_animal/hostile/dayz/human/deserter_vz/New()
	..()
	icon_state = "dezertirvz[rand(1,3)]"
	if(icon_state == "dezertirvz1")
		icon_dead = "dezertirvz1_dead"
	if(icon_state == "dezertirvz2")
		icon_dead = "dezertirvz2_dead"
	if(icon_state == "dezertirvz3")
		icon_dead = "dezertirvz3_dead"