#define AIRSHIPMENT 100000
#define AIRSHIPMENT_DEBUG 100

/obj/structure/lootable/airsupply
	name = "supply crate"
	icon = 'icons/obj/64airdrop.dmi'
	icon_state =  "crate"
	mouse_opacity = FALSE
	change_icon = TRUE
	emptyprob = 0
	lootleft = 6
	anchored = 1
	invisibility = 101
	var/debug = FALSE

	loot = list(
		/obj/item/quest/fuel_supplies,
		/obj/item/quest/food_supplies,
		/obj/item/weapon/gun/projectile/cz82,
		/obj/item/ammo_magazine/a9x19,
		/obj/item/weapon/reagent_containers/food/drinks/cans/waterbottle,
		/obj/item/weapon/reagent_containers/food/snacks/tincan/stewbuckwheat,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/geiger,
		/obj/item/stack/medical/bruise_pack/bint
		)

/obj/structure/lootable/airsupply/New()
	..()
	if(debug)
		airdrop_debug()
	else
		airdrop()

/obj/structure/lootable/airsupply/proc/airdrop()
	spawn(AIRSHIPMENT * rand(0.1, 0.9))
		invisibility = 0
		playsound(src, 'sound/escalation/heli.ogg', 70, 1)
		icon_state = initial(icon_state) + "_air"
		spawn(50)
			mouse_opacity = TRUE
			density = TRUE
			icon_state = "crate"

/obj/structure/lootable/airsupply/proc/airdrop_debug()
	spawn(AIRSHIPMENT_DEBUG * rand(0.1, 0.9))
		invisibility = 0
		playsound(src, 'sound/escalation/heli.ogg', 70, 1)
		icon_state = initial(icon_state) + "_air"
		spawn(50)
			mouse_opacity = TRUE
			density = TRUE
			icon_state = "crate"

/*
/obj/structure/lootable/airsupply/attack_hand(mob/user)
	if(lootleft <= 0)
		to_chat(user, "<span class='warning'>There's nothing left in this crate...</span>")
		icon_state = "crate_looted"
		return
	visible_message("[user] starts searching inside of [src].")
	if(do_after(user, 40))
		var/obj/item/booty = pick(loot)
		booty = new booty(loc)
		lootleft--
		update_icon()
		icon_state = "crate_opened"
		to_chat(user, "<span class='notice'>You find \a [booty] inside of [src].</span>")
*/