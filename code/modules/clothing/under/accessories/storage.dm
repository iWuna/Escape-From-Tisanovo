/obj/item/clothing/accessory/storage
	name = "load bearing equipment"
	desc = "Used to hold things when you don't have enough hands."
	icon_state = "webbing"
	slot = ACCESSORY_SLOT_UTILITY
	var/slots = 3
	var/max_w_class = ITEM_SIZE_SMALL //pocket sized
	var/obj/item/weapon/storage/internal/pockets/hold
	w_class = ITEM_SIZE_NORMAL
	high_visibility = 1

/obj/item/clothing/accessory/storage/New()
	..()
	create_storage()

/obj/item/clothing/accessory/storage/proc/create_storage()
	hold = new/obj/item/weapon/storage/internal/pockets(src, slots, max_w_class)

/obj/item/clothing/accessory/storage/attack_hand(mob/user as mob)
	if (has_suit)	//if we are part of a suit
		hold.open(user)
		return

	if (hold.handle_attack_hand(user))	//otherwise interact as a regular storage item
		..(user)

/obj/item/clothing/accessory/storage/MouseDrop(obj/over_object as obj)
	if (has_suit)
		return

	if (hold.handle_mousedrop(usr, over_object))
		..(over_object)

/obj/item/clothing/accessory/storage/attackby(obj/item/W as obj, mob/user as mob)
	return hold.attackby(W, user)

/obj/item/clothing/accessory/storage/emp_act(severity)
	hold.emp_act(severity)
	..()

/obj/item/clothing/accessory/storage/attack_self(mob/user as mob)
	to_chat(user, "<span class='notice'>You empty [src].</span>")
	var/turf/T = get_turf(src)
	hold.hide_from(usr)
	for(var/obj/item/I in hold.contents)
		hold.remove_from_storage(I, T)
	src.add_fingerprint(user)

/obj/item/clothing/accessory/storage/webbing
	name = "webbing"
	desc = "Sturdy mess of synthcotton belts and buckles, ready to share your burden."
	icon_state = "webbing"

/obj/item/clothing/accessory/storage/webbing_large
	name = "large webbing"
	desc = "A large collection of synthcotton pockets and pouches."
	icon_state = "webbing_large"
	slots = 4

/obj/item/clothing/accessory/storage/black_vest
	name = "black webbing vest"
	desc = "Robust black synthcotton vest with lots of pockets to hold whatever you need, but cannot hold in hands."
	icon_state = "vest_black"
	slots = 5

/obj/item/clothing/accessory/storage/brown_vest
	name = "brown webbing vest"
	desc = "Worn brownish synthcotton vest with lots of pockets to unload your hands."
	icon_state = "vest_brown"
	slots = 5

/obj/item/clothing/accessory/storage/white_vest
	name = "white webbing vest"
	desc = "Durable white synthcotton vest with lots of pockets to carry essentials."
	icon_state = "vest_white"
	slots = 5

/obj/item/clothing/accessory/storage/drop_pouches
	slots = 4 //to accomodate it being slotless

/obj/item/clothing/accessory/storage/drop_pouches/create_storage()
	hold = new/obj/item/weapon/storage/internal/pouch(src, slots*base_storage_cost(max_w_class))

/obj/item/clothing/accessory/storage/drop_pouches/black
	name = "black drop pouches"
	desc = "Robust black synthcotton bags to hold whatever you need, but cannot hold in hands."
	icon_state = "thigh_black"

/obj/item/clothing/accessory/storage/drop_pouches/brown
	name = "brown drop pouches"
	desc = "Worn brownish synthcotton bags to hold whatever you need, but cannot hold in hands."
	icon_state = "thigh_brown"

/obj/item/clothing/accessory/storage/drop_pouches/white
	name = "white drop pouches"
	desc = "Durable white synthcotton bags to hold whatever you need, but cannot hold in hands."
	icon_state = "thigh_white"

/obj/item/clothing/accessory/storage/knifeharness
	name = "decorated harness"
	desc = "A heavily decorated harness of sinew and leather with two knife-loops."
	icon_state = "unathiharness2"
	slots = 2
	max_w_class = ITEM_SIZE_NORMAL //for knives

/obj/item/clothing/accessory/storage/knifeharness/New()
	..()
	hold.can_hold = list(
		/obj/item/weapon/material/hatchet,
		/obj/item/weapon/material/kitchen/utensil/knife,
		/obj/item/weapon/material/knife,
		/obj/item/weapon/material/butterfly,
	)

	new /obj/item/weapon/material/hatchet/unathiknife(hold)
	new /obj/item/weapon/material/hatchet/unathiknife(hold)

/obj/item/clothing/accessory/storage/machteharness
	name = "machete scabbard"
	desc = "An old scabbard fitting for something bit and sharp."
	icon_state = "unathiharness1"
	slots = 1
	max_w_class = ITEM_SIZE_LARGE //for knives

/obj/item/clothing/accessory/storage/machteharness/New()
	..()
	hold.can_hold = list(
		/obj/item/weapon/material/hatchet/machete,
	)

	new /obj/item/weapon/material/hatchet/machete(hold)

/obj/item/clothing/accessory/storage/bandolier
	name = "bandolier"
	desc = "A lightweight synthethic bandolier with straps for holding ammunition or other small objects."
	icon_state = "bandolier"
	slots = 10
	max_w_class = ITEM_SIZE_NORMAL

/obj/item/clothing/accessory/storage/bandolier/New()
	..()
	hold.can_hold = list(
		/obj/item/ammo_casing,
		/obj/item/weapon/grenade,
		/obj/item/weapon/material/hatchet/tacknife,
		/obj/item/weapon/material/kitchen/utensil/knife,
		/obj/item/weapon/material/knife,
		/obj/item/weapon/material/star,
		/obj/item/weapon/rcd_ammo,
		/obj/item/weapon/reagent_containers/syringe,
		/obj/item/weapon/reagent_containers/hypospray,
		/obj/item/weapon/reagent_containers/hypospray/autoinjector,
		/obj/item/weapon/syringe_cartridge,
		/obj/item/weapon/plastique,
		/obj/item/clothing/mask/smokable,
		/obj/item/weapon/screwdriver,
		/obj/item/device/multitool,
		/obj/item/weapon/magnetic_ammo,
		/obj/item/ammo_magazine
	)

/obj/item/clothing/accessory/storage/overalls_electrician
	name = "electrician overalls"
	icon_state = "electrician-overalls"
	slots = 2

/obj/item/clothing/accessory/storage/overalls
	name = "overalls"
	icon_state = "overalls_acc"
	slots = 2

/obj/item/clothing/accessory/storage/overalls_emergency
	name = "emergency overalls"
	icon_state = "emergency-overalls"
	slots = 2

/obj/item/clothing/accessory/storage/apron_factory
	name = "factory worker apron"
	icon_state = "factoryworker-apron"
	slots = 2

/obj/item/clothing/accessory/storage/usmc_harness
	name = "ALICE harness"
	desc = "Can store some stuff."
	icon_state = "usmc_harness"
	slots = 4

/obj/item/clothing/accessory/storage/usmc_harness/New()
	..()
	new /obj/item/weapon/shovel/etool(hold)
	new /obj/item/weapon/storage/belt/holster/flaskstorage/nato(hold)
	new /obj/item/weapon/storage/belt/holster/flaskstorage/nato(hold)
	new /obj/item/weapon/storage/firstaid/usmc_ifak(hold)

/obj/item/clothing/accessory/storage/sa_harness
	name = "harness"
	desc = "Can store some stuff."
	icon_state = "sa_harness"
	slots = 4


/obj/item/clothing/accessory/storage/sa_harness/New()
	..()
	new /obj/item/weapon/shovel/spadewp(hold)
	new /obj/item/weapon/storage/belt/holster/flaskstorage/soviet(hold)

/obj/item/clothing/accessory/storage/bdw_harness
	name = "harness"
	desc = "Can store some stuff."
	icon_state = "bdw_harness"
	slots = 3

/obj/item/clothing/accessory/storage/bdw_harness/create_storage()
	hold = new/obj/item/weapon/storage/internal/pouch(src, slots*base_storage_cost(max_w_class))

/obj/item/clothing/accessory/storage/bdw_harness/New()
	..()
	new /obj/item/weapon/shovel/etool(hold)
	new /obj/item/weapon/storage/belt/holster/flaskstorage/nato(hold)
	new /obj/item/weapon/storage/firstaid/usmc_ifak(hold)

/obj/item/clothing/accessory/storage/nvaddr_harness
	name = "harness"
	desc = "Can store some stuff."
	icon_state = "nvaddr_harness"
	slots = 4

/obj/item/clothing/accessory/storage/nvaddr_harness/New()
	..()
	new /obj/item/weapon/shovel/spadewp(hold)
	new /obj/item/weapon/storage/belt/holster/flaskstorage/soviet(hold)


/obj/item/clothing/accessory/sa_officer_harness
	name = "officer belt"
	icon_state = "sa_officerharness"
	slot = ACCESSORY_SLOT_UTILITY

/obj/item/clothing/accessory/nva_officer_harness
	name = "officer belt"
	icon_state = "nvaddr_officerharness"
	slot = ACCESSORY_SLOT_UTILITY