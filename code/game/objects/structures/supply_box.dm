/obj/structure/eft/supply
	name = "supply box"
	desc = "box with supplies inside!"
	icon = 'icons/obj/objects.dmi'
	icon_state = "supply"
	var/list/supply = list()

/obj/structure/eft/supply/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W, /obj/item/weapon/crowbar))
		playsound(loc, 'sound/items/Crowbar.ogg', 100, 1)
		if(do_after(user, 30))
			playsound(loc, 'sound/items/woodbreak.ogg', 100, 1)
			new /obj/effect/gibspawner/crate(loc)
			var/obj/item/booty = pick(supply)
			to_chat(user, "<span class='notice'>Box breaks and reveals its contents.</span>")
			booty = new booty(loc)
			qdel(src)

/obj/structure/eft/supply/us
	desc = "box with supplies inside! This one have United States flag on it."
	icon_state = "supply_us"

/obj/structure/eft/supply/soviet
	desc = "box with supplies inside! This one have Soviet flag on it."
	icon_state = "supply_soviet"
	supply = list(
		/obj/item/stack/medical/ointment/soviet,
		/obj/item/weapon/reagent_containers/food/snacks/tincan/condensedmilk,
		/obj/item/weapon/reagent_containers/food/snacks/tincan/stewbuckwheat,
		/obj/item/stack/medical/bruise_pack/bint,
		/obj/item/weapon/reagent_containers/food/condiment/sovietsugar/morflot,
		/obj/item/weapon/reagent_containers/food/drinks/bottle/andropovka,
		/obj/item/weapon/reagent_containers/food/snacks/beetsoup,
		/obj/item/clothing/mask/gas/ppm88
		)

/obj/structure/eft/supply/redcross
	desc = "box with supplies inside! This one have Red Cross label."
	icon_state = "supply_redcross"
	supply = list(
		/obj/item/stack/medical/advanced/ointment,
		/obj/item/stack/medical/splint,
		/obj/item/stack/medical/bruise_pack/gauze,
		/obj/item/stack/medical/tourniquet,
		/obj/item/weapon/reagent_containers/glass/ampule/morphine,
		/obj/item/weapon/reagent_containers/glass/ampule/epinephrine,
		/obj/item/weapon/reagent_containers/hypospray/autoinjector/combat/bicaridine,
		/obj/item/weapon/reagent_containers/syrette/morphine,
		/obj/item/weapon/reagent_containers/syrette/promedolum,
		/obj/item/weapon/reagent_containers/food/snacks/tincan/stewbuckwheat,
		/obj/item/weapon/reagent_containers/food/snacks/tincan/stewpearlbarley
		)

/obj/structure/eft/supply/nato
	desc = "box with supplies inside! This one have NATO flag on it."
	icon_state = "supply_nato"
	supply = list(
		/obj/item/stack/medical/ointment/nato,
		/obj/item/weapon/storage/firstaid/usmc_ifak,
		/obj/item/stack/medical/bruise_pack/gauze,
		/obj/item/stack/medical/tourniquet/nato,
		/obj/item/weapon/reagent_containers/food/drinks/flask/wornflask/nato,
		/obj/item/weapon/reagent_containers/food/snacks/armymaindish/armychocolate,
		/obj/item/weapon/reagent_containers/food/snacks/tincan/stewpearlbarley,
		/obj/item/clothing/mask/gas/hazmat_nato
		)