
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
							/area/coldwar/house19,
							/area/coldwar/house20,
							/area/coldwar/house21,
							/area/coldwar/house22,
							/area/coldwar/house23
							)


/area/coldwar
	name = "area"
	icon_state = "hallF"
	requires_power = 0
	dynamic_lighting = 1
	base_turf = /turf/unsimulated/ground/
	ambience = list (
	'sound/ambience/coldwar/0Background0.ogg',
	'sound/ambience/coldwar/0Background1.ogg',
	'sound/ambience/coldwar/0Background2.ogg',
	'sound/ambience/coldwar/0Background3.ogg',
	'sound/ambience/coldwar/0Background4.ogg',
	)

/area/coldwar/surrounding
	name = "outside (right side)"
	icon_state = "outside"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1


/area/coldwar/surroundingleftside
	name = "outside (left side)"
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

/area/coldwar/foboutside
	name = "FOB"
	icon_state = "foboutside"
	sound_env = FOREST
	requires_power = 0
	dynamic_lighting = 1


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

/area/coldwar/surroundinglevel1
	name = "outside"
	icon_state = "outside"
	sound_env = FOREST
	forced_ambience = null
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/civdef
	name = "civil defence bunker"
	icon_state = "civildefence"
	sound_env = LIVINGROOM
	ambience = null
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house1
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/sawmill
	name = "sawmill"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house2
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house3
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house4
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house5
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house6
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house7
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house8
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house9
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house10
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house11
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house12
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house13
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house14
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house15
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house16
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house17
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house18
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house19
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house20
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house21
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house22
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/house23
	name = "house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/abandonedhouse
	name = "abandoned house"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/shop2
	name = "shop"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/fobindoors
	name = "USMC FOB"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1



/area/coldwar/shop
	name = "shop"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/gasoline
	name = "gasoline"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/cafe
	name = "cafe"
	icon_state = "house"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/usmcfob
	name = "USMC FOB"
	icon_state = "usmcfob"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1

/area/coldwar/warpactfob
	name = "WARPACT FOB"
	icon_state = "foboutside"
	sound_env = LIVINGROOM
	requires_power = 0
	dynamic_lighting = 1
