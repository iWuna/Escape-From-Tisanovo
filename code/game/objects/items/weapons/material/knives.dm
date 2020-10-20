/obj/item/weapon/material/butterfly
	name = "butterfly knife"
	desc = "A basic metal blade concealed in a lightweight plasteel grip. Small enough when folded to fit in a pocket."
	icon_state = "butterflyknife"
	item_state = null
	hitsound = null
	var/active = 0
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("patted", "tapped")
	force_divisor = 0.25 // 15 when wielded with hardness 60 (steel)
	thrown_force_divisor = 0.25 // 5 when thrown with weight 20 (steel)
	weapon_speed_delay = 5
	sharpness = 5

/obj/item/weapon/material/butterfly/update_force()
	if(active)
		edge = 1
		sharp = 1
		..() //Updates force.
		throwforce = max(3,force-3)
		hitsound = 'sound/weapons/bladeslice.ogg'
		icon_state += "_open"
		w_class = ITEM_SIZE_NORMAL
		attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	else
		force = 3
		edge = 0
		sharp = 0
		hitsound = initial(hitsound)
		icon_state = initial(icon_state)
		w_class = initial(w_class)
		attack_verb = initial(attack_verb)

/obj/item/weapon/material/butterfly/switchblade
	name = "switchblade"
	desc = "A classic switchblade with gold engraving. Just holding it makes you feel like a gangster."
	icon_state = "switchblade"
	unbreakable = 1

/obj/item/weapon/material/butterfly/attack_self(mob/user)
	active = !active
	if(active)
		to_chat(user, "<span class='notice'>You flip out \the [src].</span>")
		playsound(user, 'sound/weapons/flipblade.ogg', 15, 1)
	else
		to_chat(user, "<span class='notice'>\The [src] can now be concealed.</span>")
	update_force()
	add_fingerprint(user)

/*
 * Kitchen knives
 */
/obj/item/weapon/material/knife
	name = "kitchen knife"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "knife"
	desc = "A general purpose Chef's Knife made by SpaceCook Incorporated. Guaranteed to stay sharp for years to come."
	flags = CONDUCT
	sharp = 1
	edge = 1
	force_divisor = 0.15 // 9 when wielded with hardness 60 (steel)
	matter = list(DEFAULT_WALL_MATERIAL = 12000)
	origin_tech = list(TECH_MATERIAL = 1)
	attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	picksound = 'sound/items/interactions/blade_unsheath.ogg'
	unbreakable = 1
	weapon_speed_delay = 4

/obj/item/weapon/material/knife/hook
	name = "meat hook"
	desc = "A sharp, metal hook what sticks into things."
	icon_state = "hook_knife"
	item_state = "hook_knife"

/obj/item/weapon/material/knife/ritual
	name = "ritual knife"
	desc = "The unearthly energies that once powered this blade are now dormant."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "render"
	applies_material_colour = 0

/obj/item/weapon/material/knife/butch
	name = "butcher's cleaver"
	icon = 'icons/obj/kitchen.dmi'
	icon_state = "butch"
	desc = "A huge thing used for chopping and chopping up meat. This includes clowns and clown-by-products."
	force_divisor = 0.25 // 15 when wielded with hardness 60 (steel)
	attack_verb = list("cleaved", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")


/obj/item/weapon/material/knife/bayonet
	w_class = 2
	force_divisor = 0.25
	color = null
	item_state = "knife"
	sharpness = 6

/obj/item/weapon/material/knife/bayonet/sa/a6h4
	name = "6h4 bayonet"
	desc = "An AK74 bayonet with two sharp edges near the point."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "6h4"

/obj/item/weapon/material/knife/bayonet/sa/a6h4/ddr
	name = "Modell AK74 bayonet"
	desc = "An AK74 bayonet with two sharp edges near the point."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "6h4_ddr"

/obj/item/weapon/material/knife/bayonet/sa/a6h3
	name = "6x3 bayonet"
	desc = "An AKM bayonet with two sharp edges near the point."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "6h3"

/obj/item/weapon/material/knife/bayonet/sa/a6h3/ddr
	name = "Mehrzweckbajonett M1959"
	desc = "An AKM bayonet with two sharp edges near the point."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "6h3_ddr"

/obj/item/weapon/material/knife/bayonet/csla
	name = "Vz.58 bayonet"
	desc = "A slim and sharp, but somewhat fragile czechoslovakian bayonet."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "csla"

/obj/item/weapon/material/knife/bayonet/usmc
	name = "M7 bayonet"
	desc = "A 11.9 inches bayonet with carbon steel blade. This one was manufacured in West Germany."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "usmc"

/obj/item/weapon/material/knife/bayonet/bdw
	name = "Kampfmesser M68"
	desc = "Combat knife of bundeswehr forces. German quality."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "bdw"