/obj/item/device/vinylplayer
	name = "vinyl player"
	icon = 'icons/obj/boombox.dmi'
	icon_state = "vinylplayer"
	item_state = "boombox"
	var/obj/item/device/vinyl/vinyla = null
	var/datum/sound_token/sound_token
	var/playing = 0
	var/sound_id
	w_class = ITEM_SIZE_NO_CONTAINER

/obj/item/device/vinylplayer/New()
	..()
	sound_id = "[type]_[sequential_id(type)]"


/obj/item/device/vinylplayer/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/device/vinyl))
		if(vinyla)
			to_chat(user, "<span class='warning'>There is already record on it.</span>")
			return
		if(!user.unEquip(I))
			return
		I.forceMove(src)
		vinyla = I
		visible_message("<span class='notice'>[user] places record on top of [src].</span>")
		playsound(get_turf(src), 'sound/items/boombox_casette.wav', 50, 1)
		icon_state = "vinilplayer_plast"
		return
	..()

/obj/item/device/vinylplayer/MouseDrop(var/obj/over_object)
	if (!over_object || !(ishuman(usr) || issmall(usr)))
		return

	if (!(src.loc == usr))
		return

/obj/item/device/vinylplayer/verb/eject()
	set name = "Eject record"
	set category = "Object"
	set src in view(0)

	if(usr.incapacitated())
		return
	if(!vinyla)
		to_chat(usr, "<span class='warning'>There is no vinyl record on it.</span>")
		return

	if(playing)
		StopPlaying()
	visible_message("<span class='notice'>[usr] carefully removes record from [src].</span>")
	playsound(get_turf(src), 'sound/items/boombox_casette.wav', 50, 1)
	icon_state = "vinylplayer"
	usr.put_in_hands(vinyla)
	vinyla = null

/obj/item/device/vinylplayer/attack_self(mob/user)
	if(playing)
		StopPlaying()
		playsound(get_turf(src), 'sound/items/boombox_play.wav', 50, 1)
		return
	else
		StartPlaying()
		playsound(get_turf(src), 'sound/items/boombox_play.wav', 50, 1)


/obj/item/device/vinylplayer/proc/StopPlaying()
	playing = 0
	QDEL_NULL(sound_token)

/obj/item/device/vinylplayer/proc/StartPlaying()
	StopPlaying()
	if(isnull(vinyla))
		return
	if(!vinyla.sound_inside)
		return

	sound_token = sound_player.PlayLoopingSound(src, sound_id, vinyla.sound_inside, volume = 40, range = 10, falloff = 3, prefer_mute = TRUE, ignore_vis = TRUE)
	playing = 1

/obj/item/device/vinyl
	name = "vinyl record"
	desc = "A vinyl record."
	icon = 'icons/obj/boombox.dmi'
	icon_state = "vinyl"
	var/sound/sound_inside
	w_class = ITEM_SIZE_TINY
	var/uploader_idiot
	var/current_side = 1
	var/sound/a_side
	var/sound/b_side

/obj/item/device/vinyl/attack_self(mob/user)
	. = ..()
	if(current_side == 1)
		sound_inside = b_side
		current_side = 2
		to_chat(user, "<span class='notice'>You flip the record over to the b-side.")
	else
		sound_inside = a_side
		current_side = 1
		to_chat(user, "<span class='notice'>You flip the record over to the a-side.")

/obj/item/device/vinyl/vynil1/New()
	..()
	name = "Vinyl Record No. 1"
	a_side = 'sound/music/keineheimat.ogg'
	b_side = 'sound/music/derkommisar.ogg'
	sound_inside = a_side