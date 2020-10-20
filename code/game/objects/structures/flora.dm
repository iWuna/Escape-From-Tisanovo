//trees
/obj/structure/flora/tree
	name = "tree"
	anchored = 1
	density = 1
	opacity = 1
	alpha = 150
	pixel_x = -16
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	var/chops = 0 //how many times it's been chopped. Gotta make them work for it!
	var/small = 0

/obj/structure/flora/tree/attackby(var/obj/item/I, mob/user as mob)
	if(istype(I, /obj/item/weapon/carpentry/axe))
		user << "<span class='notice'>You chop [src] with [I].</span>"
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)
		playsound(src.loc, 'sound/effects/chopchop.ogg', 100, 1)

		sleep(10)


		chops += 1

		if(chops == 4 && small)
			user << "<span class='notice'>[src] comes crashing down!</span>"

			sleep(15)

			playsound(src.loc, 'sound/effects/treefalling.ogg', 100, 1)
			new /obj/structure/log(src.loc)

			qdel(src)

		else if(chops == 8)
			user << "<span class='notice'>[src] comes crashing down!</span>"

			sleep(15)

			playsound(src.loc, 'sound/effects/treefalling.ogg', 100, 1)

			new /obj/structure/log(get_step(src, NORTH))
			new /obj/structure/log(src.loc)
			var/obj/structure/log/L = new /obj/structure/log(get_step(src, NORTH))

			L.y += 1

			qdel(src)

	return

/obj/structure/log
	icon = 'icons/obj/wood.dmi'
	icon_state = "log"
	density = 1
	anchored = 0

/obj/structure/log/attackby(var/obj/item/I, mob/user as mob)
	if(istype(I, /obj/item/weapon/carpentry/saw))
		user << "<span class='notice'>You saw the [src] with [I].</span>"

		if(do_after(user, 20))

			var/obj/item/stack/material/r_wood/W = new /obj/item/stack/material/r_wood(src.loc)

			W.pixel_y = src.pixel_y
			W.amount = rand(3,6) //going to mess with this value for a while, we'll see

			qdel(src)

	return

/obj/structure/flora/tree/pine
	name = "pine tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	alpha = 150
	icon_state = "pine_1"

/obj/structure/flora/tree/pine/New()
	..()
	icon_state = "pine_[rand(1, 3)]"

/obj/structure/flora/tree/pine/xmas
	name = "xmas tree"
	icon = 'icons/obj/flora/pinetrees.dmi'
	alpha = 150
	icon_state = "pine_c"

/obj/structure/flora/tree/pine/xmas/New()
	..()
	icon_state = "pine_c"

/obj/structure/flora/tree/dead
	icon = 'icons/obj/flora/deadtrees.dmi'
	alpha = 150
	icon_state = "tree_1"

/obj/structure/flora/tree/dead/New()
	..()
	icon_state = "tree_[rand(1, 6)]"
	density = 1
	alpha = 150


//grass
/obj/structure/flora/grass
	name = "grass"
	icon = 'icons/obj/flora/snowflora.dmi'
	anchored = 1

/obj/structure/flora/grass/brown
	icon_state = "snowgrass1bb"

/obj/structure/flora/grass/brown/New()
	..()
	icon_state = "snowgrass[rand(1, 3)]bb"


/obj/structure/flora/grass/green
	icon_state = "snowgrass1gb"

/obj/structure/flora/grass/green/New()
	..()
	icon_state = "snowgrass[rand(1, 3)]gb"

/obj/structure/flora/grass/both
	icon_state = "snowgrassall1"

/obj/structure/flora/grass/both/New()
	..()
	icon_state = "snowgrassall[rand(1, 3)]"


//bushes
/obj/structure/flora/bush
	name = "bush"
	icon = 'icons/obj/flora/snowflora.dmi'
	icon_state = "snowbush1"
	anchored = 1

/obj/structure/flora/bush/New()
	..()
	icon_state = "snowbush[rand(1, 6)]"

/obj/structure/flora/pottedplant
	name = "potted plant"
	icon = 'icons/obj/plants.dmi'
	icon_state = "plant-26"
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER

//newbushes

/obj/structure/flora/ausbushes
	name = "bush"
	icon = 'icons/obj/flora/ausflora.dmi'
	icon_state = "firstbush_1"
	anchored = 1
	layer = 2.9

/obj/structure/flora/ausbushes/Initialize()
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)

/obj/structure/flora/ausbushes/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliage, 60, 1)

/obj/structure/flora/ausbushes/New()
	..()
	icon_state = "firstbush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/reedbush
	icon_state = "reedbush_1"

/obj/structure/flora/ausbushes/reedbush/New()
	..()
	icon_state = "reedbush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/leafybush
	icon_state = "leafybush_1"

/obj/structure/flora/ausbushes/leafybush/New()
	..()
	icon_state = "leafybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/palebush
	icon_state = "palebush_1"

/obj/structure/flora/ausbushes/palebush/New()
	..()
	icon_state = "palebush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/stalkybush
	icon_state = "stalkybush_1"

/obj/structure/flora/ausbushes/stalkybush/New()
	..()
	icon_state = "stalkybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/grassybush
	icon_state = "grassybush_1"

/obj/structure/flora/ausbushes/grassybush/New()
	..()
	icon_state = "grassybush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/fernybush
	icon_state = "fernybush_1"

/obj/structure/flora/ausbushes/fernybush/New()
	..()
	icon_state = "fernybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/sunnybush
	icon_state = "sunnybush_1"

/obj/structure/flora/ausbushes/sunnybush/New()
	..()
	icon_state = "sunnybush_[rand(1, 3)]"

/obj/structure/flora/ausbushes/genericbush
	icon_state = "genericbush_1"

/obj/structure/flora/ausbushes/genericbush/New()
	..()
	icon_state = "genericbush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/pointybush
	icon_state = "pointybush_1"

/obj/structure/flora/ausbushes/pointybush/New()
	..()
	icon_state = "pointybush_[rand(1, 4)]"

/obj/structure/flora/ausbushes/lavendergrass
	icon_state = "lavendergrass_1"

/obj/structure/flora/ausbushes/lavendergrass/New()
	..()
	icon_state = "lavendergrass_[rand(1, 4)]"

/obj/structure/flora/ausbushes/ywflowers
	icon_state = "ywflowers_1"

/obj/structure/flora/ausbushes/ywflowers/New()
	..()
	icon_state = "ywflowers_[rand(1, 3)]"

/obj/structure/flora/ausbushes/brflowers
	icon_state = "brflowers_1"

/obj/structure/flora/ausbushes/brflowers/New()
	..()
	icon_state = "brflowers_[rand(1, 3)]"

/obj/structure/flora/ausbushes/ppflowers
	icon_state = "ppflowers_1"

/obj/structure/flora/ausbushes/ppflowers/New()
	..()
	icon_state = "ppflowers_[rand(1, 4)]"

/obj/structure/flora/ausbushes/sparsegrass
	icon_state = "sparsegrass_1"

/obj/structure/flora/ausbushes/sparsegrass/New()
	..()
	icon_state = "sparsegrass_[rand(1, 3)]"

/obj/structure/flora/ausbushes/fullgrass
	icon_state = "fullgrass_1"

/obj/structure/flora/ausbushes/fullgrass/New()
	..()
	icon_state = "fullgrass_[rand(1, 3)]"


//potted plants credit: Flashkirby
//potted plants 27-30: Cajoes
/obj/structure/flora/pottedplant
	name = "potted plant"
	desc = "Really brings the room together."
	icon = 'icons/obj/plants.dmi'
	icon_state = "plant-01"
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/flora/pottedplant/fern
	name = "potted fern"
	desc = "This is an ordinary looking fern. It looks like it could do with some water."
	icon_state = "plant-02"

/obj/structure/flora/pottedplant/overgrown
	name = "overgrown potted plants"
	desc = "This is an assortment of colourful plants. Some parts are overgrown."
	icon_state = "plant-03"

/obj/structure/flora/pottedplant/bamboo
	name = "potted bamboo"
	desc = "These are bamboo shoots. The tops looks like they've been cut short."
	icon_state = "plant-04"

/obj/structure/flora/pottedplant/largebush
	name = "large potted bush"
	desc = "This is a large bush. The leaves stick upwards in an odd fashion."
	icon_state = "plant-05"

/obj/structure/flora/pottedplant/thinbush
	name = "thin potted bush"
	desc = "This is a thin bush. It appears to be flowering."
	icon_state = "plant-06"

/obj/structure/flora/pottedplant/mysterious
	name = "mysterious potted bulbs"
	desc = "This is a mysterious looking plant. Touching the bulbs cause them to shrink."
	icon_state = "plant-07"

/obj/structure/flora/pottedplant/smalltree
	name = "small potted tree"
	desc = "This is a small tree. It is rather pleasant."
	icon_state = "plant-08"

/obj/structure/flora/pottedplant/unusual
	name = "unusual potted plant"
	desc = "This is an unusual plant. It's bulbous ends emit a soft blue light."
	icon_state = "plant-09"

/obj/structure/flora/pottedplant/unusual/Initialize()
	. = ..()
	set_light(0.4, 0.1, 2, 2, "#007fff")

/obj/structure/flora/pottedplant/orientaltree
	name = "potted oriental tree"
	desc = "This is a rather oriental style tree. It's flowers are bright pink."
	icon_state = "plant-10"

/obj/structure/flora/pottedplant/smallcactus
	name = "small potted cactus"
	desc = "This is a small cactus. Its needles are sharp."
	icon_state = "plant-11"

/obj/structure/flora/pottedplant/tall
	name = "tall potted plant"
	desc = "This is a tall plant. Tiny pores line its surface."
	icon_state = "plant-12"

/obj/structure/flora/pottedplant/sticky
	name = "sticky potted plant"
	desc = "This is an odd plant. Its sticky leaves trap insects."
	icon_state = "plant-13"

/obj/structure/flora/pottedplant/smelly
	name = "smelly potted plant"
	desc = "This is some kind of tropical plant. It reeks of rotten eggs."
	icon_state = "plant-14"

/obj/structure/flora/pottedplant/small
	name = "small potted plant"
	desc = "This is a pot of assorted small flora. Some look familiar."
	icon_state = "plant-15"

/obj/structure/flora/pottedplant/aquatic
	name = "aquatic potted plant"
	desc = "This is apparently an aquatic plant. It's probably fake."
	icon_state = "plant-16"

/obj/structure/flora/pottedplant/shoot
	name = "small potted shoot"
	desc = "This is a small shoot. It still needs time to grow."
	icon_state = "plant-17"

/obj/structure/flora/pottedplant/flower
	name = "potted flower"
	desc = "This is a slim plant. Sweet smelling flowers are supported by spindly stems."
	icon_state = "plant-18"

/obj/structure/flora/pottedplant/crystal
	name = "crystalline potted plant"
	desc = "These are rather cubic plants. Odd crystal formations grow on the end."
	icon_state = "plant-19"

/obj/structure/flora/pottedplant/subterranean
	name = "subterranean potted plant"
	desc = "This is a subterranean plant. It's bulbous ends glow faintly."
	icon_state = "plant-20"

/obj/structure/flora/pottedplant/subterranean/Initialize()
	. = ..()
	set_light(0.4, 0.1, 2, 2, "#ff6633")

/obj/structure/flora/pottedplant/minitree
	name = "potted tree"
	desc = "This is a miniature tree. Apparently it was grown to 1/5 scale."
	icon_state = "plant-21"

/obj/structure/flora/pottedplant/stoutbush
	name = "stout potted bush"
	desc = "This is a stout bush. Its leaves point up and outwards."
	icon_state = "plant-22"

/obj/structure/flora/pottedplant/drooping
	name = "drooping potted plant"
	desc = "This is a small plant. The drooping leaves make it look like its wilted."
	icon_state = "plant-23"

/obj/structure/flora/pottedplant/tropical
	name = "tropical potted plant"
	desc = "This is some kind of tropical plant. It hasn't begun to flower yet."
	icon_state = "plant-24"

/obj/structure/flora/pottedplant/dead
	name = "dead potted plant"
	desc = "This is the dried up remains of a dead plant. Someone should replace it."
	icon_state = "plant-25"

/obj/structure/flora/pottedplant/large
	name = "large potted plant"
	desc = "This is a large plant. Three branches support pairs of waxy leaves."
	icon_state = "plant-26"

/obj/structure/flora/pottedplant/decorative
	name = "decorative potted plant"
	desc = "This is a decorative shrub. It's been trimmed into the shape of an apple."
	icon_state = "applebush"

/obj/structure/flora/pottedplant/deskfern
	name = "fancy ferny potted plant"
	desc = "This leafy desk fern could do with a trim."
	icon_state = "plant-27"

/obj/structure/flora/pottedplant/floorleaf
	name = "fancy leafy floor plant"
	desc = "This plant has remarkably waxy leaves."
	icon_state = "plant-28"

/obj/structure/flora/pottedplant/deskleaf
	name = "fancy leafy potted desk plant"
	desc = "A tiny waxy leafed plant specimen."
	icon_state = "plant-29"

/obj/structure/flora/pottedplant/deskferntrim
	name = "fancy trimmed ferny potted plant"
	desc = "This leafy desk fern seems to have been trimmed too much."
	icon_state = "plant-30"

/obj/item/flower_vase
	name = "flower vase"
	desc = "Some pretty flowers that really brighten up the room."
	icon = 'icons/obj/plants.dmi'
	icon_state = "vase"

/obj/structure/flora/bush1
	name = "A bush"
	desc = "Just a dry bush."
	icon_state = "bush1"
	anchored = 1
	density = 0
	layer = 2.9
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/bush1/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/bush1/Initialize()
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)



/obj/structure/flora/bush2
	name = "A bush"
	desc = "Just a dry bush."
	icon_state = "bush2"
	anchored = 1
	density = 0
	icon = 'icons/obj/plants.dmi'
	layer = 2.9

/obj/structure/flora/bush2/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/bush2/Initialize()
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)

/obj/structure/flora/bush3
	name = "A bush"
	desc = "Just a dry bush."
	icon_state = "bush3"
	anchored = 1
	density = 0
	layer = 2.9
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/bush3/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/bush3/Initialize()
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)

/obj/structure/flora/bush4
	name = "A bush"
	desc = "Just a dry bush."
	icon_state = "bush4"
	anchored = 1
	density = 0
	layer = 2.9
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/bush4/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/bush4/Initialize()
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)

/obj/structure/flora/drygrass0
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass0"
	anchored = 1
	density = 0
	plane = -11
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/drygrass0/New()
	flags |= ON_BORDER
	update_icon()
	..()

/obj/structure/flora/drygrass0/update_icon()
	overlays += image('icons/obj/plants.dmi', src, "drygrass_olay", FLY_LAYER)


/obj/structure/flora/drygrass0/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass1
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass1"
	anchored = 1
	density = 0
	layer = 5
	icon = 'icons/obj/plants.dmi'
	plane = -10

/obj/structure/flora/drygrass1/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass2
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass2"
	anchored = 1
	density = 0
	layer = 5
	icon = 'icons/obj/plants.dmi'
	plane = -10

/obj/structure/flora/drygrass2/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass3
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass3"
	anchored = 1
	density = 0
	layer = 5
	icon = 'icons/obj/plants.dmi'
	plane = -10

/obj/structure/flora/drygrass3/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass5
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass5"
	anchored = 1
	density = 0
	layer = 5
	icon = 'icons/obj/plants.dmi'
	plane = -10

/obj/structure/flora/drygrass5/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass6
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass6"
	anchored = 1
	density = 0
	layer = 5
	icon = 'icons/obj/plants.dmi'
	plane = -10

/obj/structure/flora/drygrass6/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass7
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass7"
	anchored = 1
	density = 0
	layer = 5
	icon = 'icons/obj/plants.dmi'
	plane = -10

/obj/structure/flora/drygrass7/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass8
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass8"
	anchored = 1
	density = 0
	plane = -10
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/drygrass8/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass9
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass9"
	anchored = 1
	density = 0
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/drygrass9/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)

/obj/structure/flora/drygrass10
	name = "A grass"
	desc = "Just a dry grass."
	icon_state = "drygrass10"
	anchored = 1
	density = 0
	icon = 'icons/obj/plants.dmi'

/obj/structure/flora/drygrass10/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living) && prob(50))
		playsound(src.loc, foliagedry, 60, 1)


/obj/structure/flora/tree/dead_big_96x96
	name = "dead tree"
	icon = 'icons/obj/flora/96tree.dmi'
	icon_state = "96tree"
	pixel_x = -32
	plane = -10
	density = 1

/obj/structure/flora/tree/dead_big_96x96/New()
	..()
	icon_state = "tree_winter_96x96_1"//replace end of string to rand(1,*) if we sprite enough trees

/obj/structure/flora/tree/dead_big_64x128
	name = "dead tree"
	icon = 'icons/obj/flora/128tree.dmi'
	icon_state = "tree_winter_64x128_1"
	plane = -9
	density = 1

/obj/structure/flora/tree/dead_big_64x128/New()
	..()
	icon_state = "tree_winter_64x128_1"//replace end of string to rand(1,*) if we sprite enough trees
	density = 1


//rocks
//actually, i have no idea what they doin' here

/obj/structure/flora/smallrock
	name = "small rock"
	desc = "Boring like your own life."
	icon = 'icons/obj/rocks.dmi'
	icon_state = "smallrock1"
	layer = -16
	anchored = 1

/obj/structure/flora/smallrock/New()
	..()
	icon_state = "smallrock[rand(1, 5)]"
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)

/obj/structure/flora/bigrock
	name = "rock"
	desc = "Boring like your own life."
	icon = 'icons/obj/rocks.dmi'
	icon_state = "bigrock1"
	anchored = 1
	density = 0
	layer = -16
	var/cover = 70

/obj/structure/flora/bigrock/New()
	..()
	icon_state = "bigrock[rand(1, 5)]"
	pixel_x = rand(-8,8)
	pixel_y = rand(-8,8)

/obj/structure/flora/bigrock/bullet_act(var/obj/item/projectile/Proj)
	if(Proj.original != src && !prob(cover))
		return PROJECTILE_CONTINUE //pass through
	return

/obj/structure/flora/cuttedtree
	name = "cutted tree"
	desc = "Eh, boring."
	icon = 'icons/obj/flora/snowflora.dmi'
	icon_state = "cuttedtree"
	anchored = 1
	density = 0

/obj/structure/flora/tree/summer
	name = "tree"
	icon = 'icons/obj/flora/164tree.dmi'
	icon_state = "vhtree152"
	plane = -9
	density = 1
	alpha = 150

/obj/structure/flora/tree/summer/alt1
	icon = 'icons/obj/flora/96tree.dmi'
	icon_state = "hbtree96"
	pixel_x = -32
	density = 1
	alpha = 150

/obj/structure/flora/tree/summer/alt2
	icon = 'icons/obj/flora/96tree.dmi'
	icon_state = "mbtree96"
	pixel_x = -32
	density = 1
	alpha = 150

/obj/structure/flora/tree/summer/alt3
	icon = 'icons/obj/flora/96tree.dmi'
	icon_state = "sometree"
	pixel_x = -32
	density = 1
	alpha = 150

/obj/structure/flora/summer/log1
	icon = 'icons/obj/flora/miscflora48.dmi'
	icon_state = "brevno1"
	density = 1

/obj/structure/flora/summer/log2
	icon = 'icons/obj/flora/miscflora48.dmi'
	icon_state = "brevno2"
	density = 1


/obj/structure/flora/tree/summer/dead1
	name = "dead tree"
	icon_state = "vhdtree152"
	density = 1
	alpha = 150

/obj/structure/flora/tree/summer/dead2
	name = "dead tree"
	icon_state = "hdtree96"
	density = 1
	alpha = 150