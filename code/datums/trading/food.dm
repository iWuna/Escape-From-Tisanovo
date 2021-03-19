/datum/trader/grocery
	name = "Grocer"
	name_language = TRADER_DEFAULT_NAME
	possible_origins = list("HyTee", "Kreugars", "Spaceway", "Privaxs", "FutureValue")
	trade_flags = TRADER_MONEY

	possible_trading_items = list(/obj/item/weapon/reagent_containers/food/drinks/bottle/wine          = TRADER_THIS_TYPE,
							/obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey          = TRADER_THIS_TYPE,
							/obj/item/weapon/reagent_containers/food/snacks/sliceable/breadsys/          = TRADER_SUBTYPES_ONLY,
							/obj/item/weapon/reagent_containers/food/drinks/soymilk					= TRADER_THIS_TYPE,
							/obj/item/weapon/reagent_containers/food/snacks/liquidfood 				= TRADER_THIS_TYPE,
							/obj/item/weapon/reagent_containers/food/snacks/candy					= TRADER_THIS_TYPE,
							/obj/item/weapon/reagent_containers/food/snacks/candy/proteinbar		= TRADER_THIS_TYPE,
							)

	speech = list("hail_generic"     = "Hello, welcome to ORIGIN, grocery store of the future!",
				"hail_deny"          = "I'm sorry, we've blacklisted your communications due to rude behavior.",

				"trade_complete"     = "Thank you for shopping at ORIGIN!",
				"trade_blacklist"    = "I... wow that's... no, sir. No.",
				"trade_no_goods"     = "ORIGIN only accepts cash, sir.",
				"trade_not_enough"   = "That is not enough money, sir.",
				"how_much"           = "Sir, that'll cost you VALUE credits. Will that be all?",

				"compliment_deny"    = "Sir, this is a professional environment. Please don't make me get my manager.",
				"compliment_accept"  = "Thank you, sir!",
				"insult_good"        = "Sir, please do not make a scene.",
				"insult_bad"         = "Sir, I WILL get my manager if you don't calm down.",

				"bribe_refusal"      = "Of course sir! ORIGIN is always here for you!",
				)