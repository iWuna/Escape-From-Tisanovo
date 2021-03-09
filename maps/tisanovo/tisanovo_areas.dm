
var/list/interior_areas = list(/area/coldwar/house1,
							/area/coldwar/house2,
							/area/coldwar/house3,
							/area/coldwar/house4,
							/area/coldwar/house5,
							/area/coldwar/house6,
							/area/coldwar/house7,
							/area/coldwar/house8,
							/area/coldwar/house9,
							/area/coldwar/house10,
							/area/coldwar/house11,
							/area/coldwar/house12,
							/area/coldwar/house13,
							/area/coldwar/house14,
							/area/coldwar/house15,
							/area/coldwar/house16,
							/area/coldwar/house17,
							/area/coldwar/house18,
							/area/coldwar/usmc_safe
							)

/area
	var/safezone = 0
	var/radiated = 0

/area/coldwar
	name = "area"
	icon_state = "hallF"
	requires_power = 0
	dynamic_lighting = 1
	base_turf = /turf/unsimulated/ground/
	ambience = list (
	'sound/ambience/coldwar/dayz/MeadowDay.ogg',
	)

/area/coldwar/surrounding
	name = "outside"
	icon_state = "outside"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/ForestDay.ogg',
	'sound/ambience/coldwar/dayz/ForestDayBirds.ogg',
	'sound/ambience/coldwar/dayz/WindForestLight.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)

/area/coldwar/surroundingleftside
	name = "outside"
	icon_state = "outside"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/road
	name = "road"
	icon_state = "road"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/ForestDay.ogg',
	'sound/ambience/coldwar/dayz/ForestDayBirds.ogg',
	'sound/ambience/coldwar/dayz/WindForestLight.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)

/area/coldwar/foboutside
	name = "CSLA FOB"
	icon_state = "foboutside"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/ForestDay.ogg',
	'sound/ambience/coldwar/dayz/ForestDayBirds.ogg',
	'sound/ambience/coldwar/dayz/WindForestLight.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)

/area/coldwar/helioutdoors
	name = "helicopter exterior"
	icon_state = "foboutside"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1


/area/coldwar/forest
	name = "forest"
	icon_state = "forest"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/ForestDay.ogg',
	'sound/ambience/coldwar/dayz/ForestDayBirds.ogg',
	'sound/ambience/coldwar/dayz/WindForestLight.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)

/area/coldwar/surroundinglevel1
	name = "outside"
	icon_state = "outside"
	sound_env = FOREST
	forced_ambience = null
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/ForestDay.ogg',
	'sound/ambience/coldwar/dayz/ForestDayBirds.ogg',
	'sound/ambience/coldwar/dayz/WindForestLight.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)

/area/coldwar/civdef
	name = "civil defence bunker"
	icon_state = "civildefence"
	sound_env = LARGE_ENCLOSED
	ambience = null
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house1
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/sawmill
	name = "sawmill"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house2
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house3
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house4
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house5
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house6
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house7
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house8
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house9
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house10
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house11
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house12
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house13
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house14
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house15
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house16
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house17
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/house18
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/abandonedhouse
	name = "abandoned house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/shop2
	name = "shop"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/fobindoors
	name = "CSLA FOB"
	icon_state = "fobinside"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/shop
	name = "shop"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/gasoline
	name = "gasoline"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/cafe
	name = "cafe"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/HousesDay.ogg',
	)

/area/coldwar/usmcfob
	name = "USMC FOB"
	icon_state = "usmcfob"
	sound_env = PLAIN
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/ForestDay.ogg',
	'sound/ambience/coldwar/dayz/ForestDayBirds.ogg',
	'sound/ambience/coldwar/dayz/WindForestLight.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)

/area/coldwar/usmcfob_inside
	name = "USMC FOB"
	icon_state = "usmcfobinside"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/usmc_safe
	name = "USMC FOB"
	icon_state = "usmcfob"
	sound_env = LARGE_ENCLOSED
	requires_power = 0
	dynamic_lighting = 1
	safezone = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/bunker1.ogg',
	'sound/ambience/coldwar/dayz/bunker2.ogg',
	)

/area/coldwar/bunker_lab
	name = "LAB"
	icon_state = "civildefence"
	sound_env = LARGE_ENCLOSED
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/lab/lab1.ogg',
	'sound/ambience/coldwar/dayz/lab/lab2.ogg',
	'sound/ambience/coldwar/dayz/lab/lab3.ogg',
	'sound/ambience/coldwar/dayz/lab/lab4.ogg',
	'sound/ambience/coldwar/dayz/lab/lab5.ogg',
	'sound/ambience/coldwar/dayz/lab/lab6.ogg',
	)

/area/coldwar/cave
	name = "CAVE"
	icon_state = "cave"
	sound_env = LARGE_ENCLOSED
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/cave.ogg',
	)

/area/coldwar/coast
	name = "coast"
	icon_state = "coast"
	sound_env = PLAIN
	requires_power = 0
	dynamic_lighting = 1
	ambience = list (
	'sound/ambience/coldwar/dayz/Coast.ogg',
	'sound/ambience/coldwar/dayz/Sea.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_4.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_5.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_6.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_7.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_8.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_9.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_10.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_11.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_12.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_13.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_14.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_crow_15.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_shooting_3.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_1.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_2.ogg',
	'sound/ambience/coldwar/dayz/rand/rnd_wind_3.ogg',
	)