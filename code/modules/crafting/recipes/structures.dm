/datum/crafting_recipe/barbwire
	name = "barbed wire"
	tools = list(/obj/item/weapon/wirecutters = 1)
	parts = list(/obj/item/stack/metalcoil = 1)
	result = list(/obj/structure/barbwire = 1)
	time = 200
	base_chance = 100

/datum/crafting_recipe/chair
	name = "Chair"
	parts = list(/obj/item/metal_bar = 2, /obj/item/stack/material/steel/ = 1)
	tools = list(/obj/item/weapon/weldingtool = 1)
	result = list(/obj/structure/bed/chair = 1)
	time = 30
	base_chance = 100

/datum/crafting_recipe/bed
	name = "Bed"
	parts = list(/obj/item/metal_bar = 2, /obj/item/stack/material/steel/ = 2)
	tools = list(/obj/item/weapon/weldingtool = 1)
	result = list(/obj/structure/bed = 1)
	time = 30
	base_chance = 100

/datum/crafting_recipe/bar_stool
	name = "Bar Stool"
	parts = list(/obj/item/metal_bar = 1, /obj/item/stack/material/steel/ = 1)
	tools = list(/obj/item/weapon/weldingtool = 1)
	result = list(/obj/item/weapon/stool/bar  = 1)
	time = 20
	base_chance = 100

/datum/crafting_recipe/table_frame
	name = "Table Frame"
	parts = list(/obj/item/metal_bar = 2)
	tools = list(/obj/item/weapon/weldingtool = 1)
	result = list(/obj/structure/table = 1)
	time = 20
	base_chance = 100

/datum/crafting_recipe/Barricade
	name = "Barricade"
	parts = list(/obj/item/metal_bar = 4, /obj/item/stack/material/steel/ = 2)
	tools = list(/obj/item/weapon/weldingtool = 1)
	result = list(/obj/structure/barricade = 1)
	time = 60
	base_chance = 100

/datum/crafting_recipe/campfire
	name = "Campfire"
	parts = list(/obj/item/weapon/material/lstick = 2, /obj/item/weapon/paper = 1)
	tools = list(/obj/item/weapon/flame/lighter = 1)
	result = list(/obj/structure/fire_source/hearth = 1)
	time = 60
	base_chance = 100