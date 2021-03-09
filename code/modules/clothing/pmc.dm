/obj/item/clothing/shoes/pmc
	name = "combat boots"
	desc = "That's the Combat Boots Gen.I, a combat boots used by PMC."
	icon_state = "duty"
	force = 3
	armor = list(melee = 20, bullet = 40, laser = 40,energy = 25, bomb = 50, bio = 10, rad = 0)
	siemens_coefficient = 0.6
	can_hold_item = 1

/obj/item/clothing/under/pmc_soldier
	name = "PMC BDU"
	desc = "Uniform without any patches..."
	icon_state = "pmc_sold"
	worn_state = "pmc_sold"
	siemens_coefficient = 0.5
	slowdown_general = 0.2
	has_sensor = 0

/obj/item/clothing/under/pmc_medic
	name = "PMC Medic BDU"
	desc = "Uniform without any patches..."
	icon_state = "pmc_med"
	worn_state = "pmc_med"
	siemens_coefficient = 0.5
	slowdown_general = 0.2
	has_sensor = 0