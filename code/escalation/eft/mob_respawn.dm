#define ZED_RESPAWN_TIMER 100

proc/respawn_mob_timer()
	spawn(ZED_RESPAWN_TIMER)
		respawn_mob()

proc/respawn_mob()
	for(var/area/A in world)
		if(GLOB.mob_list.len>0)// && ispath(get_turf(A), /turf/open/) /Gargule (damn shit, it's a kostil`)
			var/mob/living/carbon/human/H
			var/mob/living/simple_animal/hostile/HS

			if(ispath(A, /area/coldwar/surrounding))
				if(H in range(25) && !(H in range(10)) && !(HS in range(10)))
					var/random = rand(1,100)
					switch(random)
						if(1 to 10)
							spawn_zombie(3, A)
						if(11 to 50)
							spawn_zombie_runner(3,A)
						if(41 to 90)
							spawn_zombie_police(2,A)
						if(91 to 100)
							return

			if(ispath(A, /area/coldwar/foboutside))
				if(H in range(25) && !(H in range(10)) && !(HS in range(10)))
					var/random = rand(1,100)
					switch(random)
						if(1 to 40)
							spawn_zombie_wp(2,A)
						if(41 to 95)
							spawn_zombie_wp_armored(3,A)
						if(96 to 100)
							spawn_zombie(1,A)

			if(ispath(A, /area/coldwar/usmcfob))
				if(!(H in range(10)) && !(HS in range(10)))
					var/random = rand(1,100)
					switch(random)
						if(1 to 50)
							spawn_zombie_nato(3,A)
						if(51 to 80)
							spawn_zombie_nato_hazmat(1,A)
						if(81 to 100)
							spawn_zombie_police(1,A)

proc/spawn_zombie_wp(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/soldier/G = new(Loc)
		G.health = G.maxHealth

proc/spawn_zombie_wp_armored(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/soldier/armored/G = new(Loc)
		G.health = G.maxHealth

proc/spawn_zombie_nato(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/soldier_nato/G = new(Loc)
		G.health = G.maxHealth

proc/spawn_zombie_nato_hazmat(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/nato_hazmat/G = new(Loc)
		G.health = G.maxHealth

proc/spawn_zombie(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/civ/G = new(Loc)
		G.health = G.maxHealth

proc/spawn_zombie_runner(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/runner/G = new(Loc)
		G.health = G.maxHealth

proc/spawn_zombie_police(var/amount = 1, var/Loc)
	var/i
	for(i = 0, i < amount, i++)
		var/mob/living/simple_animal/hostile/eft/zombie/police/G = new(Loc)
		G.health = G.maxHealth