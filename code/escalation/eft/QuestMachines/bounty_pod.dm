/obj/machinery/bounty_pod
	name = "Conveyor"
	desc = "This is conveyor."
	icon = 'icons/advanced/terminals.dmi'
	icon_state = "conveyor0"
	anchored = 1
	density = 0

/obj/machinery/bounty_pod/attackby(var/obj/item/I, mob/user)
	if(isrobot(user))
		return
	if(I.loc != user)
		return
	user.drop_item(get_turf(src))
	return

/obj/machinery/bounty_pod/attack_hand(mob/user as mob)
	if ((!( user.canmove ) || user.restrained() || !( user.pulling )))
		return
	if (user.pulling.anchored)
		return
	if ((user.pulling.loc != user.loc && get_dist(user, user.pulling) > 1))
		return
	if (ismob(user.pulling))
		var/mob/M = user.pulling
		M.stop_pulling()
		step(user.pulling, get_dir(user.pulling.loc, src))
		user.stop_pulling()
	else
		step(user.pulling, get_dir(user.pulling.loc, src))
		user.stop_pulling()
	return
