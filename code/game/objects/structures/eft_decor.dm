/obj/structure/car
	density = 1
	anchored = 1
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/car/civ2
	name = "truck"
	icon = 'icons/escalation/cars/moskvich1_south.dmi'
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/car/civ2/part1
	icon_state = "1"

/obj/structure/car/civ2/part2
	icon_state = "2"

/obj/structure/car/civ2/part3
	icon_state = "3"

/obj/structure/car/civ2/part4
	icon_state = "4"

/obj/structure/car/civ2/part5
	icon_state = "5"

/obj/structure/car/civ2/part6
	icon_state = "6"


/obj/structure/car/civ
	name = "truck"
	icon = 'icons/escalation/cars/gruzovik_east.dmi'
	layer = 3

/obj/structure/car/civ/part1
	icon_state = "1"
	density = 0

/obj/structure/car/civ/part2
	icon_state = "2"

/obj/structure/car/civ/part3
	icon_state = "3"
	density = 0

/obj/structure/car/civ/part4
	icon_state = "4"

/obj/structure/car/civ/part5
	icon_state = "5"
	density = 0

/obj/structure/car/civ/part6
	icon_state = "6"

/obj/structure/car/civ/part7
	icon_state = "7"
	density = 0

/obj/structure/car/civ/part8
	icon_state = "8"

/obj/structure/car/army2
	name = "army truck"
	icon = 'icons/escalation/cars/gruzovik_army_north.dmi'

/obj/structure/car/army2/part1
	icon_state = "1"

/obj/structure/car/army2/part2
	icon_state = "2"

/obj/structure/car/army2/part3
	icon_state = "3"

/obj/structure/car/army2/part4
	icon_state = "4"

/obj/structure/car/army2/part5
	icon_state = "5"

/obj/structure/car/army2/part6
	icon_state = "6"

/obj/structure/car/army2/part7
	icon_state = "7"

/obj/structure/car/army2/part8
	icon_state = "8"

/obj/structure/car/army
	name = "army truck"
	icon = 'icons/escalation/cars/gruzovik_army_south.dmi'
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/car/army/part1
	icon_state = "1"
	density = 0

/obj/structure/car/army/part2
	icon_state = "2"
	density = 0

/obj/structure/car/army/part3
	icon_state = "3"

/obj/structure/car/army/part4
	icon_state = "4"

/obj/structure/car/army/part5
	icon_state = "5"

/obj/structure/car/army/part6
	icon_state = "6"

/obj/structure/car/army/part7
	icon_state = "7"

/obj/structure/car/army/part8
	icon_state = "8"

/obj/structure/gamedev_stenka
	name = "hooley smotrish"
	density = 1

/obj/structure/barrier_dz
	name = "barrier"
	density = 1
	anchored = 1
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	icon = 'icons/escalation/eftdeco.dmi'
	icon_state = "center"

/obj/structure/barrier_dz/left
	icon_state = "left"

/obj/structure/barrier_dz/right
	icon_state = "right"

/obj/structure/stolb_dz
	name = "pillar"
	desc = "Pillar with wires"
	icon = 'icons/obj/32x64.dmi'
	icon_state = "stolb"
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	density = 1
	anchored = 1

/obj/structure/tent
	name = "tent"
	desc = "Tent. Just a tent."
	icon = 'icons/obj/64x64.dmi'
	icon_state = "tent"
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	density = 1
	anchored = 1

//lootable structures

/obj/structure/lootable/shkaf_dz
	name = "closet"
	desc = "Old soviet closet"
	icon = 'icons/obj/32x64.dmi'
	icon_state = "shkaf64"
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	density = 1
	anchored = 1
	lootleft = 3
	emptyprob = 40
	loot = list(
		/obj/item/weapon/paper,
		/obj/item/weapon/gun/projectile/shotgun/doublebarrel,
		/obj/item/quest/parcel,
		/obj/item/toy/plushie/mouse,
		/obj/item/toy/snappop,
		/obj/item/trash/semki,
		/obj/item/trash/tincan/dogfood,
		/obj/item/weapon/material/kitchen/utensil/knife/plastic,
		/obj/item/clothing/mask/smokable/cigarette/luckystars
		)

/obj/structure/lootable/wardrobe
	name = "wardrobe"
	icon = 'icons/obj/objects.dmi'
	icon_state = "closet1"
	anchored = 1
	density = 1
	emptyprob = 50
	lootleft = 3
	loot = list(
		/obj/item/weapon/paper,
		/obj/item/quest/parcel,
		/obj/item/toy/snappop,
		/obj/item/trash/semki,
		/obj/item/clothing/mask/smokable/cigarette/luckystars,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/civilian/jacket_and_scarf,
		/obj/item/clothing/under/civilian/shirt_and_pants
		)

/obj/structure/lootable/crate
	icon_state = "crate"
	anchored = 1
	density = 1
	lootleft = 1
	emptyprob = 55
	loot = list(
		/obj/item/quest/fuel_supplies,
		/obj/item/quest/food_supplies,
		/obj/item/quest/battery
		)

/obj/structure/lootable/crate/military
	icon_state = "mil_crate"
	lootleft = 3
	emptyprob = 70
	loot = list(/obj/item/clothing/head/helmet/coldwar/soviet/ssh60,
		/obj/item/clothing/head/helmet/coldwar/soviet/ssh68,
		/obj/item/clothing/under/tactical,
		/obj/item/clothing/under/vpp,
		/obj/item/clothing/shoes/soviet/field,
		/obj/item/clothing/gloves/tactical
		)

/obj/structure/lootable/wardrobe/New()
	pixel_x = 0
	pixel_y = 0

/obj/structure/lootable/wardrobe/alt1
	icon_state = "closet2"

/obj/structure/lootable/wardrobe/alt2
	icon_state = "closet3"

/obj/structure/lootable/wardrobe/alt3
	icon_state = "closet4"

/obj/structure/lootable/wardrobe/tumbo4ka
	name = "chest drawer"
	icon_state = "tumbo4ka1"

/obj/structure/lootable/wardrobe/tumbo4ka/alt
	icon_state = "tumbo4ka2"

/obj/structure/lootable/wardrobe/tumbo4ka/cupboard
	icon_state = "cupboard"
	name = "cupboard"
	emptyprob = 50
	lootleft = 2
	loot = list(/obj/item/weapon/paper,
		/obj/item/trash/semki,
		/obj/item/trash/tincan/dogfood,
		/obj/item/weapon/material/kitchen/utensil/knife/plastic,
		/obj/item/weapon/material/knife/butch
		)