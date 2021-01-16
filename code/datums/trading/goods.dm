/*/datum/trader/ship/toyshop
	name = "Toy Shop Employee"
	name_language = TRADER_DEFAULT_NAME
	origin = "Toy Shop"
	trade_flags = TRADER_GOODS|TRADER_MONEY|TRADER_WANTED_ONLY
	possible_origins = list("Toys R Ours", "LEGS GO", "Kay-Cee Toys", "Build-a-Cat", "Magic Box", "The Positronic's Dungeon and Baseball Card Shop")
	speech = list("hail_generic"    = "Uuhh... hello? Welcome to ORIGIN, I hope you have a uh.... good shoping trip.",
				"hail_deny"         = "Nah, you're not allowed here. At all",

				"trade_complete"       = "Thanks for shopping... here.... at ORIGIN.",
				"trade_blacklist"      = "Uuuuuuuuuuuuuuuuuuuh.... no.",
				"trade_found_unwanted" = "Nah! That's not what I'm looking for. Something rarer.",
				"trade_not_enough"   = "Just cause they're made of cardboard doesn't mean they don't cost money...",
				"how_much"          = "Uuuuuuuh... I'm thinking like... VALUE. Right? Or something rare that complements my interest.",
				"what_want"         = "Uuuuum..... I guess I want",

				"compliment_deny"   = "Ha! Very funny! You should write your own television show.",
				"compliment_accept" = "Why yes, I do work out.",
				"insult_good"       = "Well well well. Guess we learned who was the troll here.",
				"insult_bad"        = "I've already written a nasty spacebook post in my mind about you.",

				"bribe_refusal"     = "Nah. I need to get moving as soon as uh... possible.",
				"bribe_accept"      = "You know what, I wasn't doing anything for TIME minutes anyways.",
				)

	possible_wanted_items = list(/obj/item/toy/figure       = TRADER_THIS_TYPE,
								/obj/item/toy/figure/ert    = TRADER_THIS_TYPE,
								/obj/item/toy/prize/honk    = TRADER_THIS_TYPE)

	possible_trading_items = list(/obj/item/toy/prize                 = TRADER_SUBTYPES_ONLY,
								/obj/item/toy/prize/honk              = TRADER_BLACKLIST,
								/obj/item/toy/figure                  = TRADER_SUBTYPES_ONLY,
								/obj/item/toy/figure/ert              = TRADER_BLACKLIST,
								/obj/item/toy/plushie                 = TRADER_SUBTYPES_ONLY,
								/obj/item/toy/katana                  = TRADER_THIS_TYPE,
								/obj/item/toy/sword                   = TRADER_THIS_TYPE,
								/obj/item/toy/bosunwhistle            = TRADER_THIS_TYPE,
								/obj/item/weapon/board                = TRADER_THIS_TYPE,
								/obj/item/weapon/storage/box/checkers = TRADER_ALL,
								/obj/item/weapon/deck                 = TRADER_SUBTYPES_ONLY,
								/obj/item/weapon/pack                 = TRADER_SUBTYPES_ONLY,
								/obj/item/weapon/dice                 = TRADER_ALL,
								/obj/item/weapon/dice/d20/cursed      = TRADER_BLACKLIST)
*/
/datum/trader/ship/electronics
	name = "Electronic Shop Employee"
	name_language = TRADER_DEFAULT_NAME
	origin = "Electronic Shop"
	possible_origins = list("Best Sale", "Overstore", "Oldegg", "Circuit Citadel")

	speech = list("hail_generic"    = "Hello sir! Welcome to ORIGIN, I hope you find what you are looking for.",
				"hail_deny"         = "Your call has been disconnected.",

				"trade_complete"    = "Thank you for shopping at ORIGIN, would you like to put a warranty on that?",
				"trade_blacklist"   = "Sir, this is a /electronics/ store.",
				"trade_no_goods"    = "As much as I'd love to buy that from you, I'm not.",
				"trade_not_enough"  = "Your offer isn't adequete to the item you've selected, sir.",
				"how_much"          = "Your total comes out to VALUE credits.",

				"compliment_deny"   = "Hahaha! Yeah... funny...",
				"compliment_accept" = "That's very nice of you!",
				"insult_good"       = "That was uncalled for, sir. Don't make me get my manager.",
				"insult_bad"        = "Sir, I am allowed to hang up the phone if you continue, sir.",

				"bribe_refusal"     = "Sorry, sir, but I can't really do that.",
				"bribe_accept"      = "Why not! Glad to be here for a few more minutes.",
				)

	possible_trading_items = list(/obj/item/weapon/storage/box/powercell                 = TRADER_SUBTYPES_ONLY,
								/obj/item/weapon/module/power_control					 = TRADER_THIS_TYPE,
								/obj/item/stack/cable_coil                               = TRADER_SUBTYPES_ONLY,
								/obj/item/stack/cable_coil/cyborg                        = TRADER_BLACKLIST,
								/obj/item/stack/cable_coil/random                        = TRADER_BLACKLIST,
								/obj/item/stack/cable_coil/cut                           = TRADER_BLACKLIST,
								/obj/item/weapon/cell                                    = TRADER_THIS_TYPE,
								/obj/item/weapon/storage/box/lights/mixed			 	= TRADER_THIS_TYPE,
								/obj/item/device/multitool               				  = TRADER_THIS_TYPE,
								/obj/item/device/flashlight								= TRADER_THIS_TYPE,
								/obj/item/device/geiger									= TRADER_THIS_TYPE,
								/obj/item/weapon/cell/crap                               = TRADER_THIS_TYPE,
								/obj/item/weapon/cell/high                               = TRADER_THIS_TYPE,
								/obj/item/weapon/tracker_electronics                     = TRADER_THIS_TYPE)


/datum/trader/ship/tools
	name = "Tools Shop Employee"
	name_language = TRADER_DEFAULT_NAME
	origin = "Tools Shop"
	possible_origins = list("Best Sale", "Overstore", "Oldegg", "Circuit Citadel")

	speech = list("hail_generic"    = "Hello sir! Welcome to ORIGIN, I hope you find what you are looking for.",
				"hail_deny"         = "Your call has been disconnected.",

				"trade_complete"    = "Thank you for shopping at ORIGIN, would you like to put a warranty on that?",
				"trade_blacklist"   = "Sir, this is a /electronics/ store.",
				"trade_no_goods"    = "As much as I'd love to buy that from you, I'm not.",
				"trade_not_enough"  = "Your offer isn't adequete to the item you've selected, sir.",
				"how_much"          = "Your total comes out to VALUE credits.",

				"compliment_deny"   = "Hahaha! Yeah... funny...",
				"compliment_accept" = "That's very nice of you!",
				"insult_good"       = "That was uncalled for, sir. Don't make me get my manager.",
				"insult_bad"        = "Sir, I am allowed to hang up the phone if you continue, sir.",

				"bribe_refusal"     = "Sorry, sir, but I can't really do that.",
				"bribe_accept"      = "Why not! Glad to be here for a few more minutes.",
				)

	possible_trading_items = list(/obj/item/weapon/combitool					         = TRADER_THIS_TYPE,
								/obj/item/device/radio/off								 = TRADER_THIS_TYPE,
								/obj/item/stack/cable_coil                               = TRADER_SUBTYPES_ONLY,
								/obj/item/stack/cable_coil/cyborg                        = TRADER_BLACKLIST,
								/obj/item/stack/cable_coil/random                        = TRADER_BLACKLIST,
								/obj/item/stack/cable_coil/cut                           = TRADER_BLACKLIST,
								/obj/item/weapon/crowbar/		                         = TRADER_THIS_TYPE,
								/obj/item/weapon/wrench                                  = TRADER_THIS_TYPE,
								/obj/item/weapon/wirecutters                             = TRADER_THIS_TYPE,
								/obj/item/device/multitool         				        = TRADER_THIS_TYPE,
								/obj/item/device/flashlight								= TRADER_THIS_TYPE,
								/obj/item/weapon/weldingtool/                            = TRADER_THIS_TYPE,
								/obj/item/weapon/screwdriver/                            = TRADER_THIS_TYPE,
								/obj/item/weapon/weldpack/                               = TRADER_THIS_TYPE,
								/obj/item/weapon/rasp								 	= TRADER_THIS_TYPE,
								/obj/item/weapon/storage/toolbox/mechanical				 = TRADER_THIS_TYPE,
								/obj/item/weapon/extinguisher		                     = TRADER_THIS_TYPE)



/* Clothing stores: each a different type. A hat/glove store, a shoe store, and a jumpsuit store. */

/datum/trader/ship/clothingshop
	name = "Clothing Store Employee"
	name_language = TRADER_DEFAULT_NAME
	origin = "Clothing Store"
	possible_origins = list("Space Eagle", "Forever 22", "Textiles Factory Warehouse Outlet", "Blocks Brothers")
	speech = list("hail_generic"    = "Hello sir! Welcome to ORIGIN!",
				"hail_Vox"          = "Well hello sir! I don't believe we have any clothes that fit you... but you can still look!",
				"hail_deny"         = "We do not trade with rude customers. Consider yourself blacklisted.",

				"trade_complete"    = "Thank you for shopping at ORIGIN, remember: you can return after the first day if you still have the tags on!",
				"trade_blacklist"   = "Hm, how about no?",
				"trade_no_goods"    = "We don't buy, sir. Only sell.",
				"trade_not_enough"  = "Sorry, ORIGIN policy to not accept trades below our marked prices.",
				"how_much"          = "Your total comes out to VALUE credits.",

				"compliment_deny"   = "Excuse me?",
				"compliment_accept" = "Aw, you're so nice!",
				"insult_good"       = "Sir.",
				"insult_bad"        = "Wow. I don't have to take this.",

				"bribe_refusal"     = "ORIGIN policy clearly states we cannot stay for more than the designated time.",
				"bribe_accept"      = "Hm.... sure! We'll have a few minutes of 'engine troubles'.",
				)

	possible_trading_items = list(/obj/item/clothing/under                = TRADER_SUBTYPES_ONLY,
								/obj/item/clothing/under/acj              = TRADER_BLACKLIST,
								/obj/item/clothing/under/chameleon        = TRADER_BLACKLIST,
								/obj/item/clothing/under/cloud            = TRADER_BLACKLIST,
								/obj/item/clothing/under/color            = TRADER_BLACKLIST,
								/obj/item/clothing/under/dress            = TRADER_BLACKLIST,
								/obj/item/clothing/under/ert              = TRADER_BLACKLIST,
								/obj/item/clothing/under/gimmick          = TRADER_BLACKLIST_ALL,
								/obj/item/clothing/under/lawyer           = TRADER_BLACKLIST,
								/obj/item/clothing/under/pj               = TRADER_BLACKLIST,
								/obj/item/clothing/under/rank             = TRADER_BLACKLIST,
								/obj/item/clothing/under/shorts           = TRADER_BLACKLIST,
								/obj/item/clothing/under/stripper         = TRADER_BLACKLIST_ALL,
								/obj/item/clothing/under/swimsuit         = TRADER_BLACKLIST,
								/obj/item/clothing/under/syndicate        = TRADER_BLACKLIST_ALL,
								/obj/item/clothing/under/tactical         = TRADER_BLACKLIST,
								/obj/item/clothing/under/wedding          = TRADER_BLACKLIST,
								/obj/item/clothing/under/punpun           = TRADER_BLACKLIST)

/datum/trader/ship/clothingshop/hatglovesaccessories
	possible_origins = list("Seven-One-Five", "5.22", "Greyhawk")
	possible_trading_items = list(/obj/item/clothing/accessory/storage/bandolier            = TRADER_ALL,
								/obj/item/clothing/accessory/storage/black_vest        = TRADER_ALL,
								/obj/item/clothing/accessory/storage/brown_vest      = TRADER_ALL,
								/obj/item/clothing/accessory/holster        = TRADER_ALL,
								/obj/item/clothing/accessory/kneepads      = TRADER_ALL,
								/obj/item/clothing/accessory/armguards		= TRADER_ALL,
								/obj/item/clothing/accessory/armorplate		= TRADER_SUBTYPES_ONLY,
								/obj/item/clothing/accessory/groinplate		= TRADER_ALL,
								/obj/item/clothing/accessory/storage/pouches = TRADER_ALL,
								/obj/item/clothing/suit/armor/pcarrier		= TRADER_ALL,
								/obj/item/clothing/accessory/legguards		= TRADER_ALL,
								/obj/item/clothing/accessory/neckguard		= TRADER_ALL,
								/obj/item/clothing/suit/armor/vest/old     = TRADER_ALL)

/*
/datum/trader/xeno_shop
	name = "Xenolife Collector"
	origin = "CSV Not a Poacher"
	trade_flags = TRADER_GOODS|TRADER_MONEY|TRADER_WANTED_ONLY|TRADER_WANTED_ALL
	possible_origins = list("XenoHugs","NT Specimen Acquisition","Lonely Pete's Exotic Companionship","Space Wei's Exotic Cuisine")
	speech = list("hail_generic"    = "Welcome! We are always looking to acquire more exotic life forms.",
				"hail_deny"         = "We no longer wish to speak to you. Please contact our legal representative if you wish to rectify this.",

				"trade_complete"    = "Remember to give them attention and food. They are living beings, and you should treat them like so.",
				"trade_blacklist"   = "Legally I can' do that. Morally... anyway I refuse to do that.",
				"trade_found_unwanted" = "I only want animals. I don't need food, shiny things, I'm looking for specific ones at that. Ones I already have the cage and food for.",
				"trade_not_enough"   = "I'd give you this for free, but I need the money to feed the specimens. So you must pay in full.",
				"how_much"          = "This is a good choice, I believe it will cost you VALUE credits.",
				"what_want"         = "I have the facilities currently to support",

				"compliment_deny"   = "According to customs on 34 planets I traded with, this constitutes sexual harrasment.",
				"compliment_accept" = "Thank you. I needed that.",
				"insult_good"       = "No need to be upset, I believe we can do business.",
				"insult_bad"        = "I have traded dogs with more bark than that.",
				)

	possible_wanted_items = list(/mob/living/simple_animal/tindalos    = TRADER_THIS_TYPE,
								/mob/living/simple_animal/tomato      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/yithian     = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/diyaab = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/shantak= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/samak= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/carp = TRADER_THIS_TYPE)

	possible_trading_items = list(/mob/living/simple_animal/hostile/carp= TRADER_THIS_TYPE,
								/obj/item/device/dociler              = TRADER_THIS_TYPE,
								/obj/item/weapon/beartrap			  = TRADER_THIS_TYPE,
								/obj/item/device/slime_scanner = TRADER_THIS_TYPE)
*/
/datum/trader/medical
	name = "Medical Supplier"
	origin = "Infirmary of Unity Station"
	trade_flags = TRADER_GOODS|TRADER_MONEY|TRADER_WANTED_ONLY
	want_multiplier = 1.2
	margin = 2
	possible_origins = list("Dr.Krieger's Practice","Legit Medical Supplies (No Refund)", "Mom's & Pop's Addictive Opoids")
	speech = list("hail_generic"    = "Huh? How'd you get this number?! Oh well, if you wanna talk biz, I'm listening.",
				"hail_deny"         = "This is an automated message. Feel free to fuck the right off after the buzzer. *buzz*",

				"trade_complete"    = "Good to have business with ya. Remember, no refunds.",
				"trade_blacklist"   = "Whoa whoa, I don't want this shit, put it away.",
				"trade_found_unwanted" = "What the hell do you expect me to do with this junk?",
				"trade_not_enough"   = "Sorry, pal, full payment upfront, I don't write the rules. Well, I do but that's beside the point.",
				"how_much"          = "Hmm this is one damn fine item, but I'll part with it for VALUE credits.",
				"what_want"         = "I could always use some fucking ITEM",
				"compliment_deny"   = "Haha, how nice of you, why don't you go fall in an elevator shaft.",
				"compliment_accept" = "Damn right I'm awesome, tell me more.",
				"insult_good"       = "Damn, pal, no need to get snippy.",
				"insult_bad"        = "*muffled laughter* Sorry, was that you trying to talk shit? Adorable.",
				)

	possible_wanted_items = list(/obj/item/weapon/reagent_containers/food/drinks/bottle = TRADER_THIS_TYPE,
								/obj/item/organ/internal/liver = TRADER_THIS_TYPE,
								/obj/item/organ/internal/kidneys = TRADER_THIS_TYPE,
								/obj/item/organ/internal/lungs = TRADER_THIS_TYPE,
								/obj/item/organ/internal/heart = TRADER_THIS_TYPE,
								/obj/item/weapon/storage/fancy/cigarettes = TRADER_ALL
								)

	possible_trading_items = list(
								  /obj/item/weapon/storage/box/bloodpacks  = TRADER_THIS_TYPE,
								  /obj/item/weapon/retractor = TRADER_THIS_TYPE,
								  /obj/item/weapon/hemostat = TRADER_THIS_TYPE,
								  /obj/item/weapon/cautery = TRADER_THIS_TYPE,
								  /obj/item/weapon/surgicaldrill = TRADER_THIS_TYPE,
								  /obj/item/weapon/scalpel = TRADER_THIS_TYPE,
								  /obj/item/weapon/scalpel/manager = TRADER_THIS_TYPE,
								  /obj/item/weapon/circular_saw = TRADER_THIS_TYPE,
								  /obj/item/weapon/bonegel = TRADER_THIS_TYPE,
								  /obj/item/weapon/bonesetter = TRADER_THIS_TYPE,
								  /obj/item/weapon/reagent_containers/glass/bottle/talotropine = TRADER_THIS_TYPE,
								  /obj/item/weapon/reagent_containers/glass/bottle/tetracetam = TRADER_THIS_TYPE,
								  /obj/item/weapon/reagent_containers/glass/bottle/naltamine = TRADER_THIS_TYPE,
								  /obj/item/weapon/reagent_containers/glass/bottle/morphine = TRADER_THIS_TYPE,
								  /obj/item/weapon/reagent_containers/glass/bottle/doxicycline = TRADER_THIS_TYPE,
								  /obj/item/suture = TRADER_THIS_TYPE,
								  /obj/item/weapon/storage/firstaid/regular = TRADER_THIS_TYPE,
								  /obj/item/weapon/storage/box/syringes = TRADER_THIS_TYPE,
								  /obj/item/weapon/storage/box/masks = TRADER_THIS_TYPE,
								  /obj/item/weapon/storage/box/gloves = TRADER_THIS_TYPE,
								  /obj/item/weapon/reagent_containers/chem_disp_cartridge/dexalin/small = TRADER_THIS_TYPE
								)