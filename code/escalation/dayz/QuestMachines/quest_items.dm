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

/obj/item/quest/box
	name = "important box"
	desc = "This is an important box with documents, Cholera samples, etc."
	icon_state = "box1"

/obj/item/quest/box/Initialize()
	icon_state = "box[rand(1,2)]"