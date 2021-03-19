/obj/item/weapon/lockpick
	name = "professional lockpick"
	desc = "Used to lockpick things."
	icon = 'icons/obj/keys.dmi'
	icon_state = "professional_lockpick_kit"
	w_class = 1
	var/lockpicking_speed = 5
	var/broken_chance = 50

/obj/item/weapon/lockpick/hairpin
	name = "hairpin"
	desc = "Used to lockpick things."
	icon_state = "hairpin"
	w_class = 1
	lockpicking_speed = 3
	broken_chance = 90

/obj/item/weapon/storage/bag/lockpicks
	name = "hairpin box"
	desc = "Small box with hairpins."
	icon = 'icons/obj/storage.dmi'
	icon_state = "lockpickbox_closed"
	item_state = "zippo"
	storage_slots = 60
	w_class = 1
	slot_flags = SLOT_BELT
	can_hold = list(/obj/item/weapon/lockpick/hairpin)
	cant_hold = list(/obj/item/weapon/lockpick)
	var/opened = FALSE

/obj/item/weapon/storage/bag/lockpicks/attack_self()
	opened = !opened
	update_icon()

/obj/item/weapon/storage/bag/lockpicks/New()
	..()
	var/count = rand(1, 2)
	for(var/i=1; i <= count; i++)
		new /obj/item/weapon/lockpick/hairpin(src)

/obj/item/weapon/storage/bag/lockpicks/update_icon()
	if(!opened)
		icon_state = "lockpickbox_closed"
	else
		switch(contents.len)
			if(0) icon_state = "lockpickbox_open-0"
			if(1) icon_state = "lockpickbox_open-1"
			else icon_state = "lockpickbox_open-2"

/obj/item/weapon/storage/bag/lockpicks/handle_item_insertion(obj/item/W, prevent_warning = 0, mob/user)
	opened = TRUE
	return ..()

/obj/item/weapon/storage/bag/lockpicks/remove_from_storage(obj/item/W, atom/new_location, burn = 0)
	opened = TRUE
	return ..()