var/list/obj/effect/bump_teleporter/BUMP_TELEPORTERS = list()

/obj/effect/bump_teleporter
	name = "bump-teleporter"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	var/id = null			//id of this bump_teleporter.
	var/id_target = null	//id of bump_teleporter which this moves you to.
	invisibility = 101 		//nope, can't see this
	anchored = 1
	density = 1
	opacity = 0

/obj/effect/bump_teleporter/New()
	..()
	BUMP_TELEPORTERS += src

/obj/effect/bump_teleporter/Destroy()
	BUMP_TELEPORTERS -= src
	return ..()

/obj/effect/bump_teleporter/Bumped(atom/user)
	if(!ismob(user))
		//user.loc = src.loc	//Stop at teleporter location
		return

	if(!id_target)
		//user.loc = src.loc	//Stop at teleporter location, there is nowhere to teleport to.
		return

	for(var/obj/effect/bump_teleporter/BT in BUMP_TELEPORTERS)
		if(BT.id == src.id_target)
			usr.forceMove(BT.loc)	//Teleport to location with correct id.
			if(usr.pulling)
				usr.pulling.forceMove(BT.loc)
			return

/obj/effect/bump_teleporter/tis_to_andr
	id = "tis_to_andr"
	id_target = "andr_enter"

/obj/effect/bump_teleporter/andr_to_tis
	id = "andr_to_tis"
	id_target = "tis_enter"

/obj/effect/bump_teleporter/andre_enter
	id = "andr_enter"
	id_target = null
	density = 0

/obj/effect/bump_teleporter/tis_enter
	id = "tis_enter"
	id_target = null
	density = 0