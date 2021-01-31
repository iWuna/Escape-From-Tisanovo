/*
	Quest contain information about items needs to complete them.
	And reward in caps
*/
/datum/bounty_quest
	var/name = "Default Quest Name"
	var/desc = "Default Quest Description"
	var/employer = "Default Employer"

	/* This items needs to complete this quest */
	var/list/target_items = list()

	/* How many caps will spawned after quest complete */
	var/koruna_reward = 10

	/* Will show to player, when quest is complete */
	var/end_message = "*бип-бип* Отправка успешна. Выдача награды."

	var/need_message = "Need some items"

	var/employer_icon_folder = "icons/bounty_employers/"

	var/employer_icon = "employer_00.png"

/datum/bounty_quest/proc/ItsATarget(var/target)
	for(var/target_type in target_items)
		if(istype(target, target_type))
			return 1
	return 0

/datum/bounty_quest/proc/GetIconWithPath()
	return text2path("[employer_icon_folder][employer_icon]")

/datum/bounty_quest/faction/nato/qst_0
	name = "Dance baby dance!"
	desc = "Hello, I'm from the delivery department, such a thing, I forgot my set of cassettes at home, and without music, it's terribly boring. Could you get me some music tape, please?"
	employer = "Cargo Worker"
	employer_icon = "crg_1.gif"
	need_message = "1 cassette"
	end_message = "Finally! Some good music!"
	target_items = list(/obj/item/device/cassette = 1)
	koruna_reward = 45

/datum/bounty_quest/faction/nato/qst_1
	name = "Problem with NBC suits."
	desc = "Um, here's the thing... My NBC protection suit, a little... it's torn. Would you like to get a new one?"
	employer = "NBC Soldier"
	employer_icon = "hazmat_1.gif"
	need_message = "1 NBC suit"
	end_message = "Great! Great! Finally i can throw out my old suit."
	target_items = list(/obj/item/clothing/suit/storage/hooded/hazmat/nato = 1)
	koruna_reward = 200

/datum/bounty_quest/faction/nato/qst_2
	name = "Zed question"
	desc = "Excuse me, I'm a lab technician, could you prepare some samples of the infected for transport? Dead or alive, it doesn't matter."
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "3 zombie body"
	end_message = "Finally! Some good music!"
	target_items = list(/mob/living/simple_animal/hostile/dayz/zombie = 3)
	koruna_reward = 160

/datum/bounty_quest/faction/nato/qst_3
	name = "Zed question"
	desc = "Excuse me, I'm a lab technician, could you prepare some of infected mutant for transport? Dead or alive, it doesn't matter."
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "2 zombie runner body"
	end_message = "Finally! Some good music!"
	target_items = list(/mob/living/simple_animal/hostile/dayz/zombie/runner = 2)
	koruna_reward = 100

/datum/bounty_quest/faction/nato/qst_4
	name = "Paper Bird"
	desc = "We running out of paper supplies, for some reason. Can you send us some paper?"
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "5 paper"
	end_message = "Finally! Some paper!"
	target_items = list(/obj/item/weapon/paper = 5)
	koruna_reward = 15