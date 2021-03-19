/obj/item/quest
	name = "generic quest item"
	desc = "generic quest item"
	icon = 'icons/obj/quest_items.dmi'
	icon_state = "docs2"

/obj/item/quest/docs
	name = "important documents"
	desc = "This document pile, contains field research data about Black Cholera."
	icon_state = "docs1"

/obj/item/quest/docs/Initialize()
	icon_state = "docs[rand(1,2)]"

/obj/item/quest/parcel
	name = "important parcel"
	desc = "This is an important parcel for local NATO Civil Defense Bunker."
	icon_state = "parcel1"

/obj/item/quest/parcel/Initialize()
	icon_state = "parcel[rand(1,3)]"

/obj/item/quest/tape
	name = "important tape"
	desc = "This is an important tape with maybe useful information."
	icon_state = "tape1"

/obj/item/quest/tape/Initialize()
	icon_state = "tape[rand(1,3)]"

/obj/item/quest/box
	name = "important box"
	desc = "This is an important box with documents, Cholera samples, etc."
	icon_state = "box1"

/obj/item/quest/box/Initialize()
	icon_state = "box[rand(1,2)]"

/obj/item/quest/food_supplies
	name = "supplies container"
	desc = "This is an container which contains some food."
	icon_state = "food_supplies"

/obj/item/quest/fuel_supplies
	name = "fuel canister"
	desc = "This is an container which contains some fuel for generator."
	icon_state = "fuel_supply"

/obj/item/quest/battery
	name = "6-STEN-140-M"
	desc = "Tank battery with increased capacity. Milspec electronics."
	icon_state = "battery"

/obj/item/quest/military_chip
	name = "chip"
	desc = "Small chip with military codes, this can be useful for traders."
	icon_state = "military_chip"