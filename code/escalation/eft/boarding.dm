/obj/structure/barricade/wooden/planks
	icon = 'icons/obj/boarding.dmi'
	icon_state = "board"
	maxhealth = 90
	health = 90
	layer = 5
	var/planks = 3
	var/maxplanks = 3

/obj/structure/barricade/wooden/planks/New()
	..()
	checkplanks()
	maxhealth = maxplanks*30

/obj/structure/barricade/wooden/planks/examine()
	..()
	to_chat(usr, "<span class='notice'>There's [planks].</span>")

/obj/structure/barricade/wooden/planks/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/crowbar))
		visible_message("<span class='danger'>[user] begins to pry off a board...</span>")
		if(do_after(user, 25, target = src))
			visible_message("<span class='danger'>[user] pries off a board!</span>")
			planks --
			checkplanks()
			return
	..() //Adding more planks is an afterattack on the sheet type

/obj/structure/barricade/wooden/planks/proc/take_damage()
	..()
	if(health <= (planks-1)*30)
		planks --
		checkplanks()
	return

/obj/structure/barricade/wooden/planks/proc/checkplanks()
	if(planks > maxplanks)
		planks = maxplanks

	health = planks*30 //Each board adds 30 health
	icon_state = "board-[planks]"
	if(health <= 0)
		qdel(src)

/obj/structure/barricade/wooden/planks/pregame/Initialize() //Place these in the map maker to have a bit of randomization with boarded up windows/doors
	planks = rand(1,maxplanks)
	..()