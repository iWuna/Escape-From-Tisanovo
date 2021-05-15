/obj/item/device/boombox
	name = "boombox"
	icon = 'icons/obj/boombox.dmi'
	icon_state = "boombox"
	item_state = "boombox"
	var/obj/item/device/cassette/casseta = null
	var/datum/sound_token/sound_token
	var/playing = 0
	var/sound_id
	w_class = ITEM_SIZE_NO_CONTAINER

/obj/item/device/boombox/nato
	icon_state = "boombox_nato"

/obj/item/device/boombox/New()
	..()
	sound_id = "[type]_[sequential_id(type)]"


/obj/item/device/boombox/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/device/cassette))
		if(casseta)
			to_chat(user, "<span class='warning'>There is already cassette inside.</span>")
			return
		if(!user.unEquip(I))
			return
		I.forceMove(src)
		casseta = I
		visible_message("<span class='notice'>[user] insert cassette into [src].</span>")
		playsound(get_turf(src), 'sound/items/boombox_casette.wav', 50, 1)
		return
	..()

/obj/item/device/boombox/MouseDrop(var/obj/over_object)
	if (!over_object || !(ishuman(usr) || issmall(usr)))
		return

	if (!(src.loc == usr))
		return

/obj/item/device/boombox/verb/eject()
	set name = "Eject tape"
	set category = "Object"
	set src in view(0)

	if(usr.incapacitated())
		return
	if(!casseta)
		to_chat(usr, "<span class='warning'>There is no cassette inside.</span>")
		return

	if(playing)
		StopPlaying()
	visible_message("<span class='notice'>[usr] ejects cassete from [src].</span>")
	playsound(get_turf(src), 'sound/items/boombox_casette.wav', 50, 1)
	usr.put_in_hands(casseta)
	casseta = null

/obj/item/device/boombox/attack_self(mob/user)
	if(playing)
		StopPlaying()
		playsound(get_turf(src), 'sound/items/boombox_play.wav', 50, 1)
		return
	else
		StartPlaying()
		playsound(get_turf(src), 'sound/items/boombox_play.wav', 50, 1)


/obj/item/device/boombox/proc/StopPlaying()
	playing = 0
	QDEL_NULL(sound_token)

/obj/item/device/boombox/proc/StartPlaying()
	StopPlaying()
	if(isnull(casseta))
		return
	if(!casseta.sound_inside)
		return

	sound_token = sound_player.PlayLoopingSound(src, sound_id, casseta.sound_inside, volume = 40, range = 10, falloff = 3, prefer_mute = TRUE, ignore_vis = TRUE)
	playing = 1

/obj/item/device/cassette
	name = "cassette tape"
	desc = "A cassette tape."
	icon = 'icons/obj/boombox.dmi'
	icon_state = "cassette"
	var/sound/sound_inside
	w_class = ITEM_SIZE_TINY
	var/uploader_idiot
	var/current_side = 1
	var/sound/a_side
	var/sound/b_side

/obj/item/device/cassette/attack_self(mob/user)
	. = ..()
	if(current_side == 1)
		sound_inside = b_side
		current_side = 2
		to_chat(user, "<span class='notice'>You flip the cassette over to the b-side.")
	else
		sound_inside = a_side
		current_side = 1
		to_chat(user, "<span class='notice'>You flip the cassette over to the a-side.")

/obj/item/device/cassette/tape1/New()
	..()
	name = "Tape No. 1"
	a_side = 'sound/music/keineheimat.ogg'
	b_side = 'sound/music/derkommisar.ogg'
	sound_inside = a_side

/obj/item/device/cassette/tape2/New()
	..()
	name = "Tape No. 2"
	a_side = 'sound/music/dasliedvomvaterland.ogg'
	b_side = 'sound/music/sagmirwodustehst.ogg'
	sound_inside = a_side

/obj/item/device/cassette/tape3/New()
	..()
	name = "Tape No. 3"
	a_side = 'sound/music/elektrichka.ogg'
	b_side = 'sound/music/luftballons.ogg'
	sound_inside = a_side

/obj/item/device/cassette/tape4/New()
	..()
	name = "Tape No. 4"
	a_side = 'sound/music/hardtimes.ogg'
	b_side = 'sound/music/outoftouch.ogg'
	sound_inside = a_side

/obj/item/device/cassette/tape5/New()
	..()
	name = "Tape No. 5"
	a_side = 'sound/music/soldworld.ogg'
	b_side = 'sound/music/youvegotanotherthingcoming.ogg'
	sound_inside = a_side

/obj/item/device/cassette/tape6/New()
	..()
	name = "Tape No. 946"
	a_side = 'sound/music/katanazero.ogg'
	b_side = 'sound/music/blackntans.ogg'
	sound_inside = a_side