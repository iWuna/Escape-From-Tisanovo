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
	name = "Zed question part 1"
	desc = "Excuse me, I'm a lab technician, could you prepare some samples of the infected for transport? Dead or alive, it doesn't matter."
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "3 zombie body"
	end_message = "Finally! Some good music!"
	target_items = list(/mob/living/simple_animal/hostile/eft/zombie = 3)
	koruna_reward = 160

/datum/bounty_quest/faction/nato/qst_3
	name = "Zed question part 2"
	desc = "Excuse me, I'm a lab technician, could you prepare some of infected mutant for transport? Dead or alive, it doesn't matter."
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "2 zombie runner body"
	end_message = "Finally! Some good music!"
	target_items = list(/mob/living/simple_animal/hostile/eft/zombie/runner = 2)
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

/datum/bounty_quest/faction/nato/qst_5
	name = "Dressed to kill"
	desc = "Best of a day! Everybody's so stylish nowadays, folks come by asking for things that weren't much of a hit even back in peaceful times. Doesn't matter if the thing is hit through by a PM like paper, they'll still take it as long as it makes them stand out. It turns out, people are still having a life, want to party or whatever. Look for different kinds of hats on mannequins or shelves, you know, those like in western movies, or our ushankas."
	employer = "Ragman"
	employer_icon = "crg_1.gif"
	need_message = "2 Soviet Ushanka"
	end_message = "Beauty will save the world as they say."
	target_items = list(/obj/item/clothing/head/ushanka/soviet = 2)
	koruna_reward = 150

/datum/bounty_quest/faction/nato/qst_6
	name = "Sew it good"
	desc = "Hi there drifter, I have a solid business proposal for you. Don't you worry, I'm not shitting you, the real deal. Can't say what it is right now, but if it starts off good, I'll be sure to tell you. I need a couple of large backpacks, purple \"Pilgrim\" ones, and a couple of mask hats, you know, with ninja-type slits."
	employer = "Ragman"
	employer_icon = "sci_1.gif"
	need_message = "1 Piligrim backpack"
	end_message = "Taken off dead walkers, I guess? Whatever, that'll do."
	target_items = list(/obj/item/weapon/storage/backpack/piligrim = 1)
	koruna_reward = 400

/datum/bounty_quest/faction/nato/qst_7
	name = "Postman"
	desc = "Good afternoon. Someone told me that you are the one young man who will help us to reconnect and find the lost parcel. Great! I'll be waiting."
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "1 lost parcel"
	end_message = "Well, thank you! No wonder Prapor recommended you as a reliable and responsible person"
	target_items = list(/obj/item/quest/parcel = 1)
	koruna_reward = 100

/datum/bounty_quest/faction/nato/qst_8
	name = "Food Problem"
	desc = "Good afternoon. Someone told me that you are the one young man who will help us to reconnect and find the lost parcel. Great! I'll be waiting."
	employer = "Peacekeeper"
	employer_icon = "crg_1.gif"
	need_message = "2 food supplies"
	end_message = "I assume you don't need to be reminded that all this is only between us."
	target_items = list(/obj/item/quest/food_supplies = 2)
	koruna_reward = 200

/datum/bounty_quest/faction/nato/qst_9
	name = "Sit and listen"
	desc = "Hello there, we lost a bunch of tapes with IMPORTANT notes, can you find one of them?"
	employer = "Lab technician"
	employer_icon = "sci_1.gif"
	need_message = "1 important tape"
	end_message = "Ah, this makes sense now..."
	target_items = list(/obj/item/quest/tape = 1)
	koruna_reward = 100

/datum/bounty_quest/faction/nato/qst_10
	name = "Desert Rat"
	desc = "Well, we running out of fuel for generator, can you find some?"
	employer = "Cargo Worker"
	employer_icon = "crg_1.gif"
	need_message = "1 Fuel Canister"
	end_message = "I assume you don't need to be reminded that all this is only between us, he-he."
	target_items = list(/obj/item/quest/fuel_supplies = 1)
	koruna_reward = 80

/datum/bounty_quest/faction/nato/qst_11
	name = "Debut"
	desc = "I need one Pump Shotgun. Don't ask what for. Just need it."
	employer = "Prapor"
	employer_icon = "crg_1.gif"
	need_message = "1 pump shotgun"
	end_message = "What's up, warrior? Implying you really put'em thugs down? Or just picked up some rubbish others were too embarrassed to take, no? Okay, don't get your jimmies rustled. I'll believe you until you screw up for real."
	target_items = list(/obj/item/weapon/gun/projectile/shotgun/pump = 1)
	koruna_reward = 4500

/datum/bounty_quest/faction/nato/qst_12
	name = "Delivery from the past"
	desc = "Stay well, fighter. Still, in our fallen world, I see? But enough of that. There is one thing. So to say, rather sensitive. We kind of reached trust with you? So I'll be trusting you now. I won't go into details of why who and for what, not really related to the task at hand."
	employer = "Prapor"
	employer_icon = "crg_1.gif"
	need_message = "1 important box"
	end_message = "What, success again? Bit of a warrior, eh? The Terror of Tisanovo, my arse! Don't be offended now! Everything's done right, I owe you one. Important business is taken care of - I feel good. And when I feel good, proper people around me start feeling good as well. Got it?"
	target_items = list(/obj/item/quest/box = 1)
	koruna_reward = 400

/datum/bounty_quest/faction/nato/qst_13
	name = "Regulated materials"
	desc = "Come on in, warrior! Still breathing aye? That's fine. Look, there is a problem. There's this customer, showed up outta nowhere, an urgent order and the bitch himself wants specific parts of equipment, the ones our glorious mother Russia produced, and it’s notorious for me that the good of the state has to be sold and judging by the accent, the fucker is from abroad. But the cash is noble and connections he provides are no joke. In general, you need one military battery and a dozen or so of 30mm shells. I bet you'll have to sneak on the military base for it... The place is inhospitable, I know, but you won't regret it when the checkout time comes. Plus, I’ll provide you with a special gift for this. Will you take the risk?"
	employer = "Prapor"
	employer_icon = "crg_1.gif"
	need_message = "1 military battery"
	end_message = "You actually did it! Well fucking done. So I keep my word. Here's your reward."
	target_items = list(/obj/item/quest/battery = 1)
	koruna_reward = 600