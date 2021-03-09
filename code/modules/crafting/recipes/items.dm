
/datum/crafting_recipe/knifeblade
	name = "Knife blade"
	tools = list(/obj/item/weapon/stone = 2)
	parts = list(/obj/item/weapon/stone = 1)
	result = list(/obj/item/weapon/crafty/knifeblade = 1)
	time = 60
	base_chance = 80

/datum/crafting_recipe/simpleknife
	name = "Makeshift knife"
	parts = list(/obj/item/weapon/material/lstick = 1, /obj/item/weapon/crafty/knifeblade = 1)
	result = list(/obj/item/weapon/material/knife/craftknife = 1)
	time = 60
	base_chance = 80

/datum/crafting_recipe/simplearmor
	name = "Makeshift armor"
	parts = list(/obj/item/stack/material/steel = 2, /obj/item/stack/rope = 1, /obj/item/weapon/tape_roll = 1)
	result = list(/obj/item/clothing/suit/armor/vest/makeshift = 1)
	time = 120
	base_chance = 80

/datum/crafting_recipe/simplehatchet
	name = "Makeshift hatchet"
	parts = list(/obj/item/weapon/material/lstick = 1, /obj/item/weapon/crafty/knifeblade = 1)
	result = list(/obj/item/weapon/material/hatchet/crafthatchet = 1)
	time = 60
	base_chance = 100

/datum/crafting_recipe/sharprock
	name = "Sharp rock"
	tools = list(/obj/item/weapon/stone = 1)
	parts = list(/obj/item/weapon/stone = 1)
	result = list(/obj/item/weapon/material/sharprock = 1)
	time = 60
	base_chance = 200
