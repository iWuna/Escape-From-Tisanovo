#define DEHYDRATION_MIN 200
#define DEHYDRATION_NOTICE 100
#define DEHYDRATION_WEAKNESS 50
#define DEHYDRATION_NEARDEATH -100
#define DEHYDRATION_NEGATIVE_INFINITY -10000

#define DEHYDRATION_OXY_DAMAGE 2.5
#define DEHYDRATION_TOX_DAMAGE 2.5
#define DEHYDRATION_BRAIN_DAMAGE 2.5
#define DEHYDRATION_OXY_HEAL_RATE 1

/mob/living/carbon/human/proc/handle_stomach()
	spawn(0)
		for(var/a in stomach_contents)
			if(!(a in contents) || isnull(a))
				stomach_contents.Remove(a)
				continue
			if(iscarbon(a)|| isanimal(a))
				var/mob/living/M = a
				if(M.stat == DEAD)
					M.death(1)
					stomach_contents.Remove(M)
					qdel(M)
					continue
				if(air_master.current_cycle%3==1)
					if(!(M.status_flags & GODMODE))
						M.adjustBruteLoss(5)
					nutrition += 10
	var/list/hunger_phrases = list(
		"You feel weak and malnourished. You must find something to eat now!",
		"You haven't eaten in ages, and your body feels weak! It's time to eat something.",
		"You can barely remember the last time you had a proper, nutritional meal. Your body will shut down soon if you don't eat something!",
		"Your body is running out of essential nutrients! You have to eat something soon.",
		"If you don't eat something very soon, you're going to starve to death."
		)
	var/list/shunger_phrases = list(
		"Your stomach is growling.",
		"You should grab something to eat.",
		"It will be nice if you find something to eat.",
		"You belly growls."
		)
	var/list/dehydratation_phrases = list(
		"You feel weak and malnourished. You must find something to drink now!",
		"You haven't drunk in ages, and your body feels weak! It's time to eadrinkt something.",
		"You can barely remember the last time you had a drink. Your body will shut down soon if you don't drink something!",
		"Your body is running out of essential water! You have to water something soon.",
		"If you don't drink something very soon, you're going to dehydrate to death."
		)
	var/list/sdehydratation_phrases = list(
		"Your throat is sore.",
		"You should grab something to drink.",
		"It will be nice if you find something to drink."
		)
//DEHYDRATATION//////////////////////////
		//When you're starving, the rate at which oxygen damage is healed is reduced by 80% (you only restore 1 oxygen damage per life tick, instead of 5)
	if(hydratation < 300)
		switch(hydratation)
			if(DEHYDRATION_NOTICE to DEHYDRATION_MIN) //60-80
				if(sleeping)
					return
				if(prob(2))
					to_chat(src, "<span class='danger'>[pick(sdehydratation_phrases)]</span>")
			if(DEHYDRATION_WEAKNESS to DEHYDRATION_NOTICE) //30-60
				if(sleeping)
					return

				if(prob(5)) //3% chance of a tiny amount of oxygen damage (1-10)

					adjustOxyLoss(rand(10,20))
					to_chat(src, "<span class='danger'>[pick(dehydratation_phrases)]</span>")

			if(DEHYDRATION_NEARDEATH to DEHYDRATION_WEAKNESS) //5-30, 5% chance of weakening and 1-230 oxygen damage. 5% chance of a seizure. 10% chance of dropping item
				if(sleeping)
					return

				if(prob(3))

					adjustOxyLoss(rand(10,30))
					to_chat(src, "<span class='danger'>You're dehydrating. You feel your life force slowly leaving your body...</span>")
					eye_blurry += 20
					Weaken(20)

				else if(paralysis<1 && prob(5)) //Mini seizure (25% duration and strength of a normal seizure)

					Weaken(15)
					make_jittery(15)
					make_dizzy(1)
					adjustOxyLoss(rand(5,25))
					eye_blurry += 20

			if(-INFINITY to DEHYDRATION_NEARDEATH) //Fuck the whole body up at this point
				to_chat(src, "<span class='danger'>You are dying from dehydratation!</span>")
				adjustToxLoss(STARVATION_TOX_DAMAGE)
				adjustOxyLoss(STARVATION_OXY_DAMAGE)
				adjustBrainLoss(STARVATION_BRAIN_DAMAGE)

				if(prob(10))
					Weaken(15)
	//NUTRITION/////////////////////////////
	if(nutrition < 100) //Nutrition is below 100 = starvation
		switch(nutrition)
			if(STARVATION_NOTICE to STARVATION_MIN) //60-80
				if(sleeping)
					return

				if(prob(2))
					to_chat(src, "<span class='danger'>[pick(shunger_phrases)]</span>")


			if(STARVATION_WEAKNESS to STARVATION_NOTICE) //30-60
				if(sleeping)
					return

				if(prob(3)) //3% chance of a tiny amount of oxygen damage (1-10)

					adjustOxyLoss(rand(10,20))
					to_chat(src, "<span class='danger'>[pick(hunger_phrases)]</span>")

			if(STARVATION_NEARDEATH to STARVATION_WEAKNESS) //5-30, 5% chance of weakening and 1-230 oxygen damage. 5% chance of a seizure. 10% chance of dropping item
				if(sleeping)
					return

				if(prob(3))

					adjustOxyLoss(rand(10,30))
					to_chat(src, "<span class='danger'>You're starving. You feel your life force slowly leaving your body...</span>")
					eye_blurry += 20
					Weaken(20)

				else if(paralysis<1 && prob(5)) //Mini seizure (25% duration and strength of a normal seizure)

					Weaken(15)
					make_jittery(15)
					make_dizzy(1)
					adjustOxyLoss(rand(5,25))
					eye_blurry += 20

			if(-INFINITY to STARVATION_NEARDEATH) //Fuck the whole body up at this point
				to_chat(src, "<span class='danger'>You are dying from starvation!</span>")
				adjustToxLoss(STARVATION_TOX_DAMAGE)
				adjustOxyLoss(STARVATION_OXY_DAMAGE)
				adjustBrainLoss(STARVATION_BRAIN_DAMAGE)

				if(prob(10))
					Weaken(15)

	handle_excrement()