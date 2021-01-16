/*
For zooming with scope or binoculars. This is called from
modules/mob/mob_movement.dm if you move you will be zoomed out
modules/mob/living/carbon/human/life.dm if you die, you will be zoomed out.
*/

/mob/
	var/zoom = 0

//Looking through a scope or binoculars should /not/ improve your periphereal vision. Still, increase viewsize a tiny bit so that sniping isn't as restricted to NSEW
/mob/verb/zoom() //tileoffset is client view offset in the direction the user is facing. viewsize is how far out this thing zooms. 7 is normal view
	set category = "Object"
	set name = "Look into distance"

	if(!src.client)
		return
	var/cannotzoom

	if(src.incapacitated(INCAPACITATION_DISABLED))
		to_chat(src, "<span class='warning'>You are unable to focus your vision.</span>")
		cannotzoom = 1
//	else if(!zoom && src.equipment_tint_total >= TINT_MODERATE)
//		to_chat(src, "<span class='warning'>Your visor gets in the way of looking far.</span>")
//		cannotzoom = 1
//	else if(!zoom && usr.get_active_hand() != src)
//		to_chat(user, "<span class='warning'>You are too distracted to focus your vision.</span>")
//		cannotzoom = 1

	if(!zoom && !cannotzoom)
		src.toggle_zoom_hud()	// If the user has already limited their HUD this avoids them having a HUD when they zoom in
		src.client.view = 10
		zoom = 1

		var/tilesize = 50
		var/viewoffset = tilesize * 6

		switch(src.dir)
			if (NORTH)
				src.client.pixel_x = 0
				src.client.pixel_y = viewoffset
			if (SOUTH)
				src.client.pixel_x = 0
				src.client.pixel_y = -viewoffset
			if (EAST)
				src.client.pixel_x = viewoffset
				src.client.pixel_y = 0
			if (WEST)
				src.client.pixel_x = -viewoffset
				src.client.pixel_y = 0
		src.visible_message("[src] looks off into the distance.")
		src.set_face_dir()
		src.m_intent = "walk"


	else
		src.client.view = world.view
		src.toggle_zoom_hud()
		zoom = 0
		src.client.pixel_x = 0
		src.client.pixel_y = 0
		src.set_face_dir(facingdirnull = 1)
		src.m_intent = "run"

	return