// simulated/floor is currently plating by default, but there really should be an explicit plating type.
/turf/simulated/floor/plating
	name = "plating"
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "plating"
	plane = PLATING_PLANE

/turf/simulated/floor/carpet
	name = "brown carpet"
	icon = 'icons/turf/flooring/carpet.dmi'
	icon_state = "brown"
	initial_flooring = /decl/flooring/carpet

/turf/simulated/floor/carpet/blue
	name = "blue carpet"
	icon_state = "blue1"
	initial_flooring = /decl/flooring/carpet/blue

/turf/simulated/floor/carpet/blue2
	name = "pale blue carpet"
	icon_state = "blue2"
	initial_flooring = /decl/flooring/carpet/blue2

/turf/simulated/floor/carpet/purple
	name = "purple carpet"
	icon_state = "purple"
	initial_flooring = /decl/flooring/carpet/purple

/turf/simulated/floor/carpet/orange
	name = "orange carpet"
	icon_state = "orange"
	initial_flooring = /decl/flooring/carpet/orange

/turf/simulated/floor/carpet/green
	name = "green carpet"
	icon_state = "green"
	initial_flooring = /decl/flooring/carpet/green

/turf/simulated/floor/carpet/red
	name = "red carpet"
	icon_state = "red"
	initial_flooring = /decl/flooring/carpet/red

/turf/simulated/floor/bluegrid
	name = "mainframe floor"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_state = "bcircuit"
	initial_flooring = /decl/flooring/reinforced/circuit
	light_range = 2
	light_power = 3
	light_color = COLOR_BLUE

/turf/simulated/floor/bluegrid/airless
	initial_gas = null

/turf/simulated/floor/greengrid
	name = "mainframe floor"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_state = "gcircuit"
	initial_flooring = /decl/flooring/reinforced/circuit/green
	light_range = 2
	light_power = 3
	light_color = COLOR_GREEN

/turf/simulated/floor/greengrid/airless
	initial_gas = null

/turf/simulated/floor/wood
	name = "wooden floor"
	icon = 'icons/turf/flooring/wood.dmi'
	icon_state = "wood"
	initial_flooring = /decl/flooring/wood

/turf/simulated/floor/tiled/bunker/
	name = "bunker floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "plating"
	initial_flooring = /decl/flooring/tiling/bunker/

/turf/simulated/floor/tiled/bunker/lattice
	name = "lattice"
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "lattice_new"
	plane = PLATING_PLANE

/turf/simulated/floor/tiled/bunker/plitka
	name = "floor"
	icon = 'icons/turf/flooring/plating.dmi'
	icon_state = "plitka1"
	plane = PLATING_PLANE

/turf/simulated/floor/tiled/bunker/plitka/New()
	..()
	icon_state = "plitka[rand(1,3)]"

/turf/simulated/floor/tiled/bunker/elevator
	permit_ao = 0

/turf/simulated/floor/tiled/bunker/hydro
	name = "hydro floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "hydrofloor"
	initial_flooring = /decl/flooring/tiling/bunker/hydro

/turf/simulated/floor/tiled/bunker/showroom
	name = "showroom floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "showroomfloor"
	initial_flooring = /decl/flooring/tiling/bunker/showroom

/turf/simulated/floor/tiled/bunker/cafe
	name = "cafe floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "cafe"
	initial_flooring = /decl/flooring/tiling/bunker/cafe

/turf/simulated/floor/tiled/bunker/yellow
	name = "floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "old_tile_cargo"
	initial_flooring = /decl/flooring/tiling/bunker/yellow

/turf/simulated/floor/tiled/bunker/black
	name = "floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "old_tile_black"
	initial_flooring = /decl/flooring/tiling/bunker/black

/turf/simulated/floor/tiled/bunker/red
	name = "floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "old_tile_red"
	initial_flooring = /decl/flooring/tiling/bunker/red

/turf/simulated/floor/tiled/bunker/polar
	name = "floor"
	icon = 'icons/turf/bunk.dmi'
	icon_state = "polar"
	initial_flooring = /decl/flooring/tiling/bunker/polar

/turf/simulated/floor/tiled/bunker/polar/elevator
	permit_ao = 0


/turf/simulated/floor/grass
	name = "grass patch"
	icon = 'icons/turf/flooring/grass.dmi'
	icon_state = "grass0"
	initial_flooring = /decl/flooring/grass

/turf/simulated/floor/diona
	name = "biomass"
	icon = 'icons/turf/floors.dmi'
	initial_flooring = /decl/flooring/diona

/turf/simulated/floor/carpet/blue
	name = "blue carpet"
	icon_state = "bcarpet"
	initial_flooring = /decl/flooring/carpet/blue

/turf/simulated/floor/tiled
	name = "steel floor"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "steel"
	initial_flooring = /decl/flooring/tiling

/turf/simulated/floor/tiled/bar
	name = "bar floor"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "bar"
	initial_flooring = /decl/flooring/tiling/bar

/turf/simulated/floor/tiled/misc
	icon = 'icons/turf/flooring/misc.dmi'
	initial_flooring = /decl/flooring/tiling/misc
	icon_state = "steel"

/turf/simulated/floor/tiled/misc/sec
	icon_state = "sec_chess"
	initial_flooring = /decl/flooring/tiling/misc/sec

/turf/simulated/floor/tiled/misc/med
	icon_state = "tealwh_chess"
	initial_flooring = /decl/flooring/tiling/misc/med

/turf/simulated/floor/tiled/misc/cargo
	icon_state = "cargo_chess"
	initial_flooring = /decl/flooring/tiling/misc/cargo

/turf/simulated/floor/tiled/misc/blue
	icon_state = "blue_chess"
	initial_flooring = /decl/flooring/tiling/misc/blue

/turf/simulated/floor/tiled/misc/purple
	icon_state = "prwh_chess"
	initial_flooring = /decl/flooring/tiling/misc/purple

/turf/simulated/floor/tiled/ramp
	name = "foot ramp"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "ramptop"
	initial_flooring = /decl/flooring/reinforced/ramp

/turf/simulated/floor/tiled/ramp/bottom
	name = "foot ramp"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "rampbot"
	initial_flooring = /decl/flooring/reinforced/ramp/bottom

/turf/simulated/floor/reinforced
	name = "reinforced floor"
	icon = 'icons/turf/flooring/tiles.dmi'
	icon_state = "reinforced"
	initial_flooring = /decl/flooring/reinforced

/turf/simulated/floor/reinforced/airless
	initial_gas = null

/turf/simulated/floor/cult
	name = "engraved floor"
	icon = 'icons/turf/flooring/cult.dmi'
	icon_state = "cult"
	initial_flooring = /decl/flooring/reinforced/cult

/turf/simulated/floor/cult/New()
	..()
	new /obj/effect/overlay/cult/cultfloor(src)

/turf/simulated/floor/cult/cultify()
	return

/turf/simulated/floor/tiled/dark
	name = "dark floor"
	icon_state = "dark"
	initial_flooring = /decl/flooring/tiling/dark

/turf/simulated/floor/tiled/dark/airless
	initial_gas = null

/turf/simulated/floor/tiled/white
	name = "white floor"
	icon_state = "white"
	initial_flooring = /decl/flooring/tiling/white

/turf/simulated/floor/tiled/freezer
	name = "tiles"
	icon_state = "freezer"
	initial_flooring = /decl/flooring/tiling/freezer

/turf/simulated/floor/lino
	name = "lino"
	icon = 'icons/turf/flooring/linoleum.dmi'
	icon_state = "lino"
	initial_flooring = /decl/flooring/linoleum

//ATMOS PREMADES
/turf/simulated/floor/reinforced/airless
	name = "vacuum floor"
	initial_gas = null

/turf/simulated/floor/airless
	name = "airless plating"
	initial_gas = null

/turf/simulated/floor/tiled/airless
	name = "airless floor"
	initial_gas = null

/turf/simulated/floor/bluegrid/airless
	name = "airless floor"
	initial_gas = null

/turf/simulated/floor/greengrid/airless
	name = "airless floor"
	initial_gas = null

/turf/simulated/floor/greengrid/nitrogen
	initial_gas = null

/turf/simulated/floor/tiled/white/airless
	name = "airless floor"
	initial_gas = null

// Placeholders
/turf/simulated/floor/airless/lava
	name = "lava"
	icon = 'icons/turf/flooring/lava.dmi'
	icon_state = "lava"

/turf/simulated/floor/snow
	name = "snow"
	icon = 'icons/turf/snow.dmi'
	icon_state = "snow"

/turf/simulated/floor/snow/New()
	icon_state = "snow[rand(0,12)]"
	..()

/turf/simulated/floor/

/turf/simulated/floor/light
/turf/simulated/floor/beach/coastline
/turf/simulated/floor/airless/ceiling

/turf/simulated/floor/beach
	name = "beach"
	icon = 'icons/misc/beach.dmi'

/turf/simulated/floor/beach/sand
	name = "sand"
	icon_state = "sand"

/turf/simulated/floor/beach/sand/desert
	icon_state = "desert"

/turf/simulated/floor/beach/coastline
	name = "coastline"
	icon = 'icons/misc/beach2.dmi'
	icon_state = "sandwater"

/turf/simulated/floor/beach/water
	name = "water"
	icon_state = "water"

/turf/simulated/floor/beach/water/update_dirt()
	return	// Water doesn't become dirty

/turf/simulated/floor/beach/water/ocean
	icon_state = "seadeep"

/turf/simulated/floor/beach/water/New()
	..()
	overlays += image("icon"='icons/misc/beach.dmi',"icon_state"="water5","layer"=MOB_LAYER+0.1)

/obj/effect/overlay/cult/cultfloor
	icon = 'icons/effects/effects.dmi'
	desc = "You find yourself carrying an overwhelming urge to report the observability of this overlay to the bug tracker. Mention a \"cultfloor\"."
	icon_state = "cultfloor"
	plane = ABOVE_TURF_PLANE
	layer = ABOVE_TILE_LAYER
	mouse_opacity = 0

/obj/effect/overlay/cult/floorspawn/New()
	..()
	spawn(1)
	qdel(src)