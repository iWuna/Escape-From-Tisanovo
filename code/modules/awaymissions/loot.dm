#define LOOT_RESPAWN 100000
#define ZED_RESPAWN 100000

/obj/effect/spawner/lootdrop
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	layer = OBJ_LAYER
	var/lootcount = 1		//how many items will be spawned
	var/lootdoubles = TRUE	//if the same item can be spawned twice
	var/list/loot			//a list of possible items to spawn e.g. list(/obj/item, /obj/structure, /obj/effect)
	var/fan_out_items = FALSE //Whether the items should be distributed to offsets 0,1,-1,2,-2,3,-3.. This overrides pixel_x/y on the spawner itself
	var/mob_spawner = 0
	invisibility = SEE_INVISIBLE_OBSERVER

/obj/effect/spawner/lootdrop/New()
	..()
	SpawnShit()

/obj/effect/spawner/lootdrop/proc/SpawnShit()
	if(loot && loot.len)
		var/turf/T = get_turf(src)
		var/loot_spawned = 0
		while((lootcount-loot_spawned) && loot.len)
			var/lootspawn = pickweight(loot)
			if(!lootdoubles)
				loot.Remove(lootspawn)

			if(lootspawn)
				var/atom/movable/spawned_loot = new lootspawn(T)
				if (!fan_out_items)
					if (pixel_x != 0)
						spawned_loot.pixel_x = pixel_x
					if (pixel_y != 0)
						spawned_loot.pixel_y = pixel_y
				else
					if (loot_spawned)
						spawned_loot.pixel_x = spawned_loot.pixel_y = ((!(loot_spawned%2)*loot_spawned/2)*-1)+((loot_spawned%2)*(loot_spawned+1)/2*1)
			loot_spawned++

	for(var/i in 1 to 3 step 1)
		if(!mob_spawner)
			spawn(LOOT_RESPAWN * i)
				SpawnShit()
		else
			spawn(ZED_RESPAWN * i)
				SpawnShit()
	//return INITIALIZE_HINT_QDEL

/obj/item/nothing
	name = "nothing"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"

/obj/item/nothing/New()
	qdel(src)


/obj/effect/spawner/lootdrop/food_common
	name = "common food spawner"
	lootdoubles = TRUE
	loot = list(
				/obj/item/weapon/reagent_containers/food/snacks/tincan/stewbuckwheat,
				/obj/item/weapon/reagent_containers/food/snacks/tincan/buckwheat,
				/obj/item/weapon/reagent_containers/food/snacks/tincan/condensedmilk,
				/obj/item/weapon/reagent_containers/food/snacks/armymaindish/burrito,
				/obj/item/nothing,
				/obj/item/nothing
				)

/obj/effect/spawner/lootdrop/backpack_army
	name = "rare army back"
	lootdoubles = TRUE
	loot = list(
				/obj/item/weapon/storage/backpack/sovietpack,
				/obj/item/weapon/storage/backpack/usmc_buttpack,
				/obj/item/weapon/storage/backpack/soviet_tabletbag,
				/obj/item/weapon/storage/backpack/czechpack,
				/obj/item/nothing,
				/obj/item/nothing
				)

/obj/effect/spawner/lootdrop/zombie_civ
	name = "civ random zombie spawn"
	lootdoubles = TRUE
	mob_spawner = 1
	loot = list(
				/mob/living/simple_animal/hostile/dayz/zombie/civ,
				/mob/living/simple_animal/hostile/dayz/zombie/civ,
				/mob/living/simple_animal/hostile/dayz/zombie/civ,
				/obj/item/nothing
				)

/obj/effect/spawner/lootdrop/possible_chicken
	name = "possible chicken spawn"
	lootdoubles = TRUE
	mob_spawner = 1
	loot = list(
				/mob/living/simple_animal/chicken,
				/mob/living/simple_animal/chicken,
				/obj/item/nothing
				)

/obj/effect/spawner/lootdrop/possible_goat
	name = "possible goat spawn"
	lootdoubles = TRUE
	mob_spawner = 1
	loot = list(
				/mob/living/simple_animal/retaliate/goat,
				/mob/living/simple_animal/retaliate/goat,
				/obj/item/nothing
				)

/obj/effect/spawner/lootdrop/craftable
	name = "crafting spawn"
	lootdoubles = TRUE
	loot = list(
				/obj/item/weapon/material/lstick,
				/obj/item/weapon/crafty/knifeblade,
				/obj/item/nothing
				)
