///DAYZ///
/obj/item/weapon/storage/backpack/civpack
	name = "Hiking Backpack"
	desc = "Lightweight backpack used for all day trips. Comfortably support any load that fits in."
	icon_state = "civpack"
	item_state = "civpack"
	reachable = 0
	max_storage_space = 10
	open_delay = 20

/obj/item/weapon/storage/backpack/civpack/mountain
	name = "Mountain Backpack"
	desc = "Tall mountaineering backpack made from hi-tech materials. Spacious but sort of noticeable."
	icon_state = "civpack_mountain"
	item_state = "civpack_mountain"
	reachable = 0
	max_storage_space = 15
	open_delay = 25

/obj/item/weapon/storage/backpack/civpack/New()
	..()
	var/color_rand = pick("blue", "red", "purple", "green")
	slowdown_per_slot[slot_back] = 0.5
	icon_state = initial(icon_state) + "_[color_rand]"
	if(icon_state == "civpack_red")
		item_state = "civpack_red"
	if(icon_state == "civpack_blue")
		item_state = "civpack_blue"
	if(icon_state == "civpack_green")
		item_state = "civpack_green"
	if(icon_state == "civpack_puprle")
		item_state = "civpack_puprle"

/obj/item/weapon/storage/backpack/civpack/New()
	..()
	if(icon_state == "civpack_mountain_red")
		item_state = "civpack_mountain_red"
	if(icon_state == "civpack_mountain_blue")
		item_state = "civpack_mountain_blue"
	if(icon_state == "civpack_mountain_green")
		item_state = "civpack_mountain_green"
	if(icon_state == "civpack_mountain_puprle")
		item_state = "civpack_mountain_puprle"

/obj/item/weapon/storage/backpack/soviet_tabletbag
	name = "tablet bag"
	desc = "A leather tablet bag used by soviet officers and other command staff."
	icon_state = "sa_officer_satchel"
	item_state = "sa_officer_satchel"
	reachable = 1
	max_storage_space = 6
	slot_flags = SLOT_BACK
	open_delay = 5

/obj/item/weapon/storage/backpack/bundes_med
	name = "medical bag"
	desc = "A leather tablet bag used by Bundeswehr medical personnel."
	icon_state = "bundes_med"
	item_state = "bundes_med"
	reachable = 1
	max_storage_space = 6
	open_delay = 10
	slot_flags = SLOT_BACK

/obj/item/weapon/storage/backpack/bundes_buttpack
	name = "field pack"
	desc = "A sturdy field pack used by Bundeswehr."
	icon_state = "bundes_buttpack"
	item_state = "bundes_buttpack"
	reachable = 0
	max_storage_space = 10
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/usmc_buttpack
	name = "field pack"
	desc = "A sturdy field pack used by U.S. army. Also referred as butt pack"
	icon_state = "usmc_buttpack"
	item_state = "usmc_buttpack"
	reachable = 0
	max_storage_space = 6
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/usmc_buttpack/med
	name = "medical pack"
	desc = "A sturdy field pack used by U.S. army. Also referred as butt pack. This one has a red cross on it."
	icon_state = "usmc_med"
	item_state = "usmc_med"
	max_storage_space = 6
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/usmcm3
	name = "M3 medical pack"
	desc = "A sturdy Vietnam era satchel used by medical personnel in U.S. armed forces."
	icon_state = "m3pack"
	item_state = "m3pack"
	slot_flags = SLOT_BACK
	max_storage_space = 10
	reachable = 1

/obj/item/weapon/storage/backpack/sovietpack
	name = "kitbag"
	desc = "Commonly used by Warsaw Pact."
	icon_state = "sovietpack"
	item_state = "sovietpack"
	reachable = 0
	max_storage_space = 12
	open_delay = 5

/obj/item/weapon/storage/backpack/sovietpack/New()
	..()
	slowdown_per_slot[slot_back] = 1

/obj/item/weapon/storage/backpack/czechpack
	name = "czech backpack"
	desc = "Commonly used by Czech Army."
	icon_state = "czech_back"
	item_state = "czech_back"
	reachable = 0
	max_storage_space = 14
	open_delay = 4

/obj/item/weapon/storage/backpack/sovietpack/New()
	..()
	slowdown_per_slot[slot_back] = 1

/obj/item/weapon/storage/backpack/summedsan
	name = "medical bag"
	desc = "That's the 'Sumka Meditsinskaya Sanitarnaya', a medical bag commonly used by Warsaw Pact."
	icon_state = "summedsan"
	item_state = "summedsan"
	reachable = 1
	max_storage_space = 15
	open_delay = 5
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

	startswith = list(
			/obj/item/weapon/storage/box/pill_box/doxycycline = 1,
			/obj/item/weapon/storage/box/pill_box/phenazepam = 1,
			/obj/item/weapon/storage/box/ampule_box/morphine = 1,
			/obj/item/weapon/pill_pack/amidopyrinum = 2,
			/obj/item/weapon/gauze_pack/ipp = 3,
			/obj/item/stack/medical/ointment = 2)


/obj/item/weapon/storage/backpack/gassoviet
	name = "gas mask satchel"
	desc = "That's a generic gas mask bag commonly used by Warsaw Pact."
	icon_state = "sovietgaspouch"
	item_state = "sovietgaspouch"
	reachable = 1
	max_storage_space = 6
	open_delay = 10
	slot_flags = SLOT_BACK_GUN | SLOT_BACK

/obj/item/weapon/storage/backpack/alice/medium
	name = "ALICE medium pack"
	desc = "Commonly used by USMC."
	icon_state = "alicemediumpack"
	item_state = "alicemediumpack"
	reachable = 0
	max_storage_space = 16
	open_delay = 20

/obj/item/weapon/storage/backpack/alice/medium/New()
	..()
	slowdown_per_slot[slot_back] = 0.5

/obj/item/weapon/storage/backpack/alice/large
	name = "ALICE large pack"
	desc = "Commonly used by USMC."
	icon_state = "alicelargepack"
	item_state = "alicelargepack"
	reachable = 0
	max_storage_space = 20
	open_delay = 25

/obj/item/weapon/storage/backpack/alice/large/New()
	..()
	slowdown_per_slot[slot_back] = 1

//rpg blyat

/obj/item/weapon/storage/backpack/rpgsa
	name = "RPG rocket backpack"
	desc = "Soviet Army backpack for RPG shots. Can hold two rockets."
	icon_state = "sa_rpg2"
	item_state = "sa_rpg"
	storage_slots = 2
	reachable = 1
	can_hold = list (/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/rpgsa/assistant
	name = "RPG rocket backpack"
	desc = "Backpack for grenadier assistant. Can hold three rockets."
	icon_state = "sa_rpg3"
	item_state = "sa_rpg"
	storage_slots = 3
	reachable = 1
	can_hold = list (/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/rpgcsla
	name = "RPG rocket backpack"
	desc = "CSLA backpack for RPG shots. Can hold two rockets."
	icon_state = "csla_rpg2"
	item_state = "csla_rpg"
	storage_slots = 2
	can_hold = list (/obj/item/ammo_casing/rpg_missile)

/obj/item/weapon/storage/backpack/rpgcsla/assistant
	name = "RPG rocket backpack"
	desc = "Backpack for grenadier assistant. Can hold three rockets."
	icon_state = "csla_rpg3"
	item_state = "csla_rpg"
	storage_slots = 3
	reachable = 1
	can_hold = list(/obj/item/ammo_casing/rpg_missile)