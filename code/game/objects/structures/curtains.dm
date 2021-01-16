/obj/structure/curtain
	name = "curtain"
	icon = 'icons/obj/curtain.dmi'
	icon_state = "closed"
	plane = OBJ_PLANE
	layer = ABOVE_WINDOW_LAYER
	opacity = 1
	density = 0
	anchored = 1

/obj/structure/curtain/open
	icon_state = "open"
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_HUMAN_LAYER
	opacity = 0

/obj/structure/curtain/bullet_act(obj/item/projectile/P, def_zone)
	if(!P.nodamage)
		visible_message("<span class='warning'>[P] tears [src] down!</span>")
		qdel(src)
	else
		..(P, def_zone)

/obj/structure/curtain/attack_hand(mob/user)
	playsound(get_turf(loc), "rustle", 15, 1, -5)
	toggle()
	..()

/obj/structure/curtain/proc/toggle()
	set_opacity(!opacity)
	if(opacity)
		icon_state = "closed"
		plane = ABOVE_HUMAN_PLANE
		layer = ABOVE_WINDOW_LAYER
	else
		icon_state = "open"
		plane = OBJ_PLANE
		layer = ABOVE_WINDOW_LAYER

/obj/structure/curtain/black
	name = "black curtain"
	color = "#222222"

/obj/structure/curtain/medical
	name = "plastic curtain"
	color = "#b8f5e3"
	alpha = 200

/obj/structure/curtain/open/bed
	name = "bed curtain"
	color = "#854636"

/obj/structure/curtain/open/privacy
	name = "privacy curtain"
	color = "#b8f5e3"

/obj/structure/curtain/open/shower
	name = "shower curtain"
	color = "#acd1e9"
	alpha = 200

/obj/structure/curtain/open/shower/engineering
	color = "#ffa500"

/obj/structure/curtain/open/shower/security
	color = "#aa0000"

/obj/structure/curtain/tent
	name = "tent door"
	color = "#5E5C4E"

/obj/structure/curtain/visyulki
	name = "curtain"
	icon_state = "visyolkyopen"
	color = null
	alpha = 200
	plane = ABOVE_HUMAN_PLANE
	layer = ABOVE_WINDOW_LAYER

/obj/structure/curtain/visyulki/toggle()
	set_opacity(!opacity)
	if(opacity)
		icon_state = "visyolkyclosed"
	else
		icon_state = "visyolkyopen"


#undef SHOWER_OPEN_LAYER
#undef SHOWER_CLOSED_LAYER
