/decl/hierarchy/outfit/job/cargo
	l_ear = /obj/item/device/radio/headset/headset_cargo
	hierarchy_type = /decl/hierarchy/outfit/job/cargo

/decl/hierarchy/outfit/job/cargo/qm
	name = OUTFIT_JOB_NAME("Cargo")
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/weapon/clipboard
	pda_type = /obj/item/device/pda/quartermaster

/decl/hierarchy/outfit/job/cargo/cargo_tech
	name = OUTFIT_JOB_NAME("Cargo technician")
	uniform = /obj/item/clothing/under/rank/cargotech
	pda_type = /obj/item/device/pda/cargo

/decl/hierarchy/outfit/job/cargo/mining
	name = OUTFIT_JOB_NAME("Shaft miner")
	uniform = /obj/item/clothing/under/rank/miner
	backpack = /obj/item/weapon/storage/backpack/industrial
	satchel_one  = /obj/item/weapon/storage/backpack/satchel_eng
	pda_type = /obj/item/device/pda/shaftminer
	backpack_contents = list(/obj/item/weapon/crowbar = 1, /obj/item/weapon/storage/ore = 1)
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
