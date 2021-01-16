/obj/item/device/binoculars

	name = "binoculars"
	desc = "A pair of binoculars."
	icon_state = "binoculars"

	flags = CONDUCT
	slot_flags = SLOT_BELT | SLOT_EARS
	force = 5.0
	w_class = ITEM_SIZE_SMALL
	throwforce = 5.0
	throw_range = 15
	throw_speed = 3
	var/xcoord
	var/ycoord
	var/zoomedin //to keep track if the binocs are Zoomed in.

/obj/item/device/binoculars/afterattack(atom/A, mob/living/user, adjacent, params) //handles coord obtaining
	var/obj/item/weapon/maptool/mtool = locate() in user
	if(mtool)
		A = get_turf(A)
		xcoord = A.x
		ycoord = A.y
		xcoord = obfuscate_x(xcoord)
		ycoord = obfuscate_y(ycoord)
		if(do_after(user, 80, src))
			to_chat(user, "<span class='notice'> You Calculate some Coordinates with the [src] <b>X[xcoord]:Y[ycoord]</b>.</span>")
	else
		to_chat(user, "<span class='warning'>You dont know how to calculate Coordinates without Map Tools</span>")


/obj/item/device/binoculars/proc/toggle_scope(mob/user, var/zoom_amount=14.0)
	var/zoom_offset = round(world.view * zoom_amount)
//	var/view_size = round(world.view + zoom_amount)

	zoom(user, zoom_offset, 9)
	zoomedin = 1

/obj/item/device/binoculars/attack_self(mob/user)
	if(zoomedin == 1)
		if(do_after(user, 10, src))
			toggle_scope(user, 4.0)//sniper rifles have 2.0 max
			zoomedin = 0
	else
		toggle_scope(user, 4.0)//sniper rifles have 2.0 max

/obj/item/device/binoculars/wp
	name = "binoculars"
	desc = "A pair of binoculars."
	icon_state = "wp_bino"
	item_state = "wp_bino"

/obj/item/device/binoculars/nato
	name = "binoculars"
	desc = "A pair of binoculars."
	icon_state = "nato_bino"
	item_state = "nato_bino"

/obj/item/weapon/maptool
	name = "Map Tools"
	desc = "A Foldable Paper Map of the Area and a bundle of Cartographic untensils. Use in combination with Binoculars to calculate Longitude and Latitude "
	icon_state = "maptools"
	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_POCKET
	throw_range = 5
	throw_speed = 3