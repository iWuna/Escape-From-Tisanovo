/datum/trader/ship/gunshop
	name = "Gun Shop Employee"
	name_language = TRADER_DEFAULT_NAME
	origin = "Gun Shop"
	possible_origins = list("Rooty Tootie's Point-n-Shooties", "Duncan Wu's Gun Show", "Bang-Bang Shop", "Wild-Wild-West Shop", "Jacobs", "Vladof", "Keleshnikov", "Hunting Depot", "Big Game Hunters")
	speech = list("hail_generic"    = "Hello hello! I hope you have your permit, oh who are we kidding, you're welcome anyways!",
				"hail_deny"         = "Law dictates that you can fuck off.",

				"trade_complete"    = "Thanks for buying your guns from ORIGIN!",
				"trade_blacklist"   = "We may deal in guns, but that doesn't mean we'll trade for illegal goods...",
				"trade_no_goods"    = "Cash for guns, thats the deal.",
				"trade_not_enough"  = "Guns are expensive! Give us more if you REALLY want it.",
				"how_much"          = "Well, I'd love to give this little beauty to you for VALUE.",

				"compliment_deny"   = "If we were in the same room right now, I'd probably punch you.",
				"compliment_accept" = "Ha! Good one!",
				"insult_good"       = "I expected better from you. I suppose in that, I was wrong.",
				"insult_bad"        = "If I had my gun I'd shoot you!"
				)

	possible_trading_items = list(/obj/item/weapon/gun/projectile/automatic/smg/mpistol    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/smg/fourty    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/ar/redline    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/pistol/guardian    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/pistol/deputy    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/shotgun/pump/redline    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/rifle/boltaction    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/rifle/    = TRADER_THIS_TYPE,
								/obj/item/weapon/storage/box/shotgunammo	= TRADER_THIS_TYPE,
								/obj/item/weapon/storage/box/shotgunshells	= TRADER_THIS_TYPE,
								/obj/item/ammo_magazine/box/paper			= TRADER_SUBTYPES_ONLY,
								/obj/item/weapon/storage/fancy/ammo_can 	= TRADER_SUBTYPES_ONLY,
								/obj/item/clothing/accessory/holster        = TRADER_ALL)

	possible_wanted_items = list(/obj/item/weapon/gun/projectile/automatic/smg/mpistol    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/smg/fourty    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/automatic/ar/redline    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/pistol/guardian    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/pistol/deputy    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/shotgun/pump/redline    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/rifle/boltaction    = TRADER_THIS_TYPE,
								/obj/item/weapon/gun/projectile/rifle/    = TRADER_THIS_TYPE)