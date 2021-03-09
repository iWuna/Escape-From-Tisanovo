////////////////////////////////////////////////////////////////////////////////////////////////////////Soviet armor



/obj/item/clothing/suit/storage/vest/soviet/
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)
	allowed = list(/obj/item/device/radio,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/gun/magnetic)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6


/obj/item/clothing/suit/storage/vest/soviet/a6b3
	name = "6B3 armor vest"
	desc = "An uncommon armor vest with some pouches and titanium plates used by Soviet army."
	icon_state = "6b3"
	item_state = "armor"
	armor = list(melee = 30, bullet = 35, laser = 0, energy = 25, bomb = 30, bio = 0, rad = 0)
	slowdown_general = 0.6

/obj/item/clothing/suit/storage/vest/soviet/a6b3/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 3, slot_size = 2)


/obj/item/clothing/suit/storage/vest/soviet/lifchik
	name = "makeshift webbing vest"
	desc = "Known by soviet forces as 'Lifchik', which means brassiere in English words. It seems to be knit from some kind of bag."
	icon_state = "lifchik_1"
	item_state = "armor"
	armor = list(melee = 0, bullet = 5, laser = 0, energy = 25, bomb = 15, bio = 0, rad = 0)
	slowdown_general = 0.2

/obj/item/clothing/suit/storage/vest/soviet/lifchik/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 4, slot_size = 2)

/obj/item/clothing/suit/storage/vest/soviet/lifchikalt
	name = "makeshift webbing vest"
	desc = "Known by soviet forces as 'Lifchik', which means brassiere in English words. It seems to be knit from some kind of bag."
	icon_state = "lifchik_2"
	item_state = "armor"
	armor = list(melee = 0, bullet = 5, laser = 0, energy = 25, bomb = 15, bio = 0, rad = 0)
	slowdown_general = 0.2

/obj/item/clothing/suit/storage/vest/soviet/lifchikalt/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 2, slot_size = 3)



/obj/item/clothing/suit/armor/vest/soviet/
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)
	allowed = list(/obj/item/device/radio,/obj/item/weapon/reagent_containers/spray/pepper,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/gun/magnetic)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/vest/soviet/a6b2
	name = "6B2 armored vest"
	desc = "A medium armor vest used by Soviet army."
	icon_state = "6b2"
	item_state = "armor"
	armor = list(melee = 30, bullet = 30, laser = 40, energy = 10, bomb = 25, bio = 0, rad = 0)
	slowdown_general = 0.3

/obj/item/clothing/head/hood_ww2
	name = "hood"
	desc = "A hood attached to a coat."
	icon_state = "palatka"
	body_parts_covered = HEAD
	cold_protection = HEAD
	flags_inv = HIDEEARS | BLOCKHAIR
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/suit/storage/hooded/coat_ww2
	name = "coat"
	desc = "A common sniper outfit in past war."
	icon_state = "palatka"
	item_state = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	armor = list(melee = 10, bullet = 10, laser = 20, energy = 10, bomb = 5, bio = 0, rad = 0)
	slowdown_general = 0.2
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hood_ww2

/obj/item/clothing/head/hood_hazmat
	name = "hazmat hood"
	desc = "A hood attached to a hazmat suit."
	icon_state = "hazmat_hood"
	body_parts_covered = HEAD
	cold_protection = HEAD
	flags_inv = HIDEEARS | BLOCKHAIR
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	armor = list(melee = 5, bullet = 5, laser = 20, energy = 10, bomb = 5, bio = 90, rad = 95)

/obj/item/clothing/head/hood_hazmat/nato
	icon_state = "hazmat_hood_nato"

/obj/item/clothing/suit/storage/hooded/hazmat
	name = "hazmat suit"
	desc = "Type of military personal protective equipment. NBC suits are designed to provide protection against direct contact with and contamination by radioactive, biological or chemical substances, and provide protection from contamination with radioactive materials and some types of radiation, depending on the design."
	icon_state = "hazmat"
	item_state = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	armor = list(melee = 5, bullet = 5, laser = 20, energy = 10, bomb = 5, bio = 90, rad = 95)
	slowdown_general = 0.2
	action_button_name = "Toggle Hood"
	hoodtype = /obj/item/clothing/head/hood_hazmat

/obj/item/clothing/suit/storage/hooded/hazmat/nato
	icon_state = "hazmat_nato"
	hoodtype = /obj/item/clothing/head/hood_hazmat/nato

/obj/item/clothing/suit/storage/hooded/hazmat/un
	icon_state = "ecolog"
	hoodtype = /obj/item/clothing/head/hood_hazmat

/obj/item/clothing/suit/storage/hooded/hazmat/un2
	icon_state = "ecologg"
	hoodtype = /obj/item/clothing/head/hood_hazmat/nato

/obj/item/clothing/suit/storage/hooded/ghillie
	name = "ghillie suit (F)"
	desc = "A common sniper outfit in last war. This one suited for forest."
	icon_state = "ghillie_forest"
	item_state = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	armor = list(melee = 10, bullet = 10, laser = 20, energy = 10, bomb = 5, bio = 0, rad = 0)
	slowdown_general = 0.2
	action_button_name = "Toggle Ghillie Hood"
	hoodtype = /obj/item/clothing/head/ghillie

/obj/item/clothing/suit/storage/hooded/ghillie_d
	name = "ghillie suit (D)"
	desc = "A common sniper outfit in last war. This one suited for desert."
	icon_state = "ghillie_desert"
	item_state = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	armor = list(melee = 10, bullet = 10, laser = 20, energy = 10, bomb = 5, bio = 0, rad = 0)
	slowdown_general = 0.2
	action_button_name = "Toggle Ghillie Hood"
	hoodtype = /obj/item/clothing/head/ghillie_d

/obj/item/clothing/head/ghillie
	name = "ghillie hood (F)"
	desc = "A hood attached to a ghillie suit."
	icon_state = "ghillie_forest"
	body_parts_covered = HEAD
	cold_protection = HEAD
	flags_inv = HIDEEARS | BLOCKHAIR
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/head/ghillie_d
	name = "ghillie hood (D)"
	desc = "A hood attached to a ghillie suit."
	icon_state = "ghillie_desert"
	body_parts_covered = HEAD
	cold_protection = HEAD
	flags_inv = HIDEEARS | BLOCKHAIR
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE

//USMC

/obj/item/clothing/suit/storage/vest/pasgt
	name = "PASGT M81 vest"
	desc = "A common kevlar vest used by U.S. army."
	icon_state = "pasgt_vest"
	item_state = "armor"
	armor = list(melee = 30, bullet = 30, laser = 0, energy = 25, bomb = 30, bio = 0, rad = 0)
	slowdown_general = 0.3

/obj/item/clothing/suit/storage/vest/pasgt/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 2, slot_size = 2)

/obj/item/clothing/suit/storage/vest/pasgt/woodland
	icon_state = "pasgt_vest_woodland"

/obj/item/clothing/suit/storage/vest/flakvest
	name = "M69 flak vest"
	desc = "An outdated flak vest used by NATO personnel."
	icon_state = "flakvest_nato"
	item_state = "armor"
	armor = list(melee = 20, bullet = 15, laser = 0, energy = 25, bomb = 40, bio = 0, rad = 0)
	slowdown_general = 0.2

/obj/item/clothing/suit/storage/vest/flakvest/New()
	..()
	pockets = new/obj/item/weapon/storage/internal/pockets(src, slots = 2, slot_size = 2)

/obj/item/clothing/suit/armor/vest/makeshift
	name = "makeshift armor"
	desc = "An armored vest that protects against some damage. Made from metal scrap."
	icon_state = "makeshift"
	item_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	heat_protection = UPPER_TORSO|LOWER_TORSO
	armor = list(melee = 40, bullet = 10, laser = 30, energy = 5, bomb = 5, bio = 0, rad = 0)