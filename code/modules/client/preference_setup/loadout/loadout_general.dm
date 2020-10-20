/*
/datum/gear/cane
	display_name = "cane"
	path = /obj/item/weapon/cane

/datum/gear/dice
	display_name = "dice pack"
	path = /obj/item/weapon/storage/pill_bottle/dice

/datum/gear/dice/nerd
	display_name = "dice pack (gaming)"
	path = /obj/item/weapon/storage/pill_bottle/dice_nerd

/datum/gear/cards
	display_name = "deck of cards"
	path = /obj/item/weapon/deck/cards

/datum/gear/tarot
	display_name = "deck of tarot cards"
	path = /obj/item/weapon/deck/tarot

/datum/gear/holder
	display_name = "card holder"
	path = /obj/item/weapon/deck/holder


/datum/gear/flask
	display_name = "flask"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/wornflask
	cost = 2

/datum/gear/flask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_ethanol_reagents())
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_drink_reagents())

/datum/gear/smallflask
	display_name = "flask, small"
	path = /obj/item/weapon/reagent_containers/food/drinks/flask/wornflask/small
	cost = 1

/datum/gear/smallflask/New()
	..()
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_ethanol_reagents())
	gear_tweaks += new/datum/gear_tweak/reagents(lunchables_drink_reagents())


/datum/gear/coffeecup
	display_name = "coffee cup"
	path = /obj/item/weapon/reagent_containers/food/drinks/coffeecup
	flags = GEAR_HAS_TYPE_SELECTION


/datum/gear/boot_knife
	display_name = "boot knife"
	path = /obj/item/weapon/material/kitchen/utensil/knife/boot
	cost = 1

/datum/gear/tacknife
	display_name = "combat knife"
	path = /obj/item/weapon/material/hatchet/tacknife
	cost = 2

*/

/datum/gear/under1
	display_name = "tracksuit"
	path = /obj/item/clothing/under/soviet/gopnik
	cost = 1

/datum/gear/weapon1
	display_name = "Makeshift knife"
	path = /obj/item/weapon/material/knife/sharpening
	cost = 4

/datum/gear/water1
	display_name = "Pipsi"
	path = /obj/item/weapon/reagent_containers/food/drinks/cans/grape_juice
	cost = 2

/datum/gear/water2
	display_name = "Water bottle"
	path = /obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle
	cost = 3

/datum/gear/food1
	display_name = "Salami slice"
	path = /obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/salami
	cost = 2


/datum/gear/matchbook
	display_name = "matchbook"
	path = /obj/item/weapon/storage/box/matches

/datum/gear/lighter
	display_name = "cheap lighter"
	path = /obj/item/weapon/flame/lighter

/datum/gear/zippo
	display_name = "zippo"
	path = /obj/item/weapon/flame/lighter/zippo