
///////////////////////////////////////////////////////
//                                                   //
//                  Combining foods                  //
//                                                   //
///////////////////////////////////////////////////////

// Bread slice + butter = bread and butter
/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/bread/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/butter))
		new /obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/butterbread(src.loc)
		user << "You place butter on the bread."
		qdel(W)
		qdel(src)

/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/butterbread/attackby(obj/item/weapon/W as obj, mob/user as mob)
	// Bread and butter + cheese slice = cheese sandwich
	if(istype(W,/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/cheese))
		new /obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/chsandwich(src.loc)
		user << "You make a cheese sandwich."
		qdel(W)
		qdel(src)

	// Bread and butter + cutlet = meat sandwich
	else if(istype(W,/obj/item/weapon/reagent_containers/food/snacks/cutlet))
		new /obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/msandwich(src.loc)
		user << "You make a meat sandwich."
		qdel(W)
		qdel(src)

	else if(istype(W, /obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/salami))
		new /obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/salsandwich(src.loc)
		user << "You make a salami sandwich."
		qdel(W)
		qdel(src)


// Cheese sandwich + meat sandwich = sammich
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/chsandwich/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/msandwich))
		new /obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/sammich(src.loc)
		user << "You make a sammich,"
		qdel(W)
		qdel(src)

// Meat sandwich + cheese sandwich = sammich
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/msandwich/attackby(obj/item/weapon/W as obj, mob/user as mob)
	if(istype(W,/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/chsandwich))
		new /obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/sammich(src.loc)
		user << "You make a sammich,"
		qdel(W)
		qdel(src)

// Burger + cheese slice = cheeseburger
/obj/item/weapon/reagent_containers/food/snacks/burger/attackby(obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/cheese/W as obj, mob/user as mob)
	if(istype(W))
		new /obj/item/weapon/reagent_containers/food/snacks/cheeseburger(src.loc)
		user << "You make a cheeseburger."
		qdel(W)
		qdel(src)
		return
	..()

// Hamburger + cheese slice = cheeseburger
/obj/item/weapon/reagent_containers/food/snacks/hamburger/attackby(obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/cheese/W as obj, mob/user as mob)
	if(istype(W))
		new /obj/item/weapon/reagent_containers/food/snacks/cheeseburger(src.loc)
		user << "You make a cheeseburger."
		qdel(W)
		qdel(src)
		return
	..()

// Spaghetti + meatball = spaghetti with meatballs
/obj/item/weapon/reagent_containers/food/snacks/spagetti/attackby(obj/item/weapon/reagent_containers/food/snacks/meatball/W as obj, mob/user as mob)
	if(istype(W))
		new /obj/item/weapon/reagent_containers/food/snacks/meatballspagetti(src.loc)
		user << "You add meatballs to spaghetti."
		qdel(W)
		qdel(src)
		return
	..()

///////////////////////////////////////////////////////
//                                                   //
//           Bread and sandwich system.              //
//           Stuff goes on top of bread slices!      //
//                                                   //
///////////////////////////////////////////////////////


// the loaf
/obj/item/weapon/reagent_containers/food/snacks/sliceable/breadsys/loaf
	name = "loaf of bread"
	desc = "A fine loaf of bread"
	icon_state = "loaf4"
	filling_color = "#ffe396"
	center_of_mass = "x=16;y=9"
	nutriment_desc = list("bread" = 6)
	nutriment_amt = 6
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/bread
	slices_num = 5
	New()
		..()
		bitesize = 0.5

// the butterpack
/obj/item/weapon/reagent_containers/food/snacks/sliceable/breadsys/butterpack
	name = "Butter pack"
	desc = "A big pack of goodness."
	icon_state = "butterpack"
	nutriment_desc = list("cheap butter" = 6)
	nutriment_amt = 8
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/butter
	slices_num = 5
	New()
		..()
		bitesize = 1

// the stick of salami
/obj/item/weapon/reagent_containers/food/snacks/sliceable/breadsys/salamistick
	name = "salami stick"
	desc = "Don't choke on this, find a knife."
	icon_state = "salamistick3"
	nutriment_desc = list("meat" = 6)
	nutriment_amt = 12
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/salami
	slices_num = 6
	New()
		..()
		bitesize = 2
		reagents.add_reagent(/datum/reagent/nutriment/protein, 12)

/obj/item/weapon/reagent_containers/food/snacks/sliceable/breadsys/salo
	name = "salo"
	desc = "Don't choke on this, find a knife."
	icon_state = "salo"
	nutriment_desc = list("meat" = 6)
	nutriment_amt = 12
	slice_path = /obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/salo_slice
	slices_num = 3
	New()
		..()
		bitesize = 2
		reagents.add_reagent(/datum/reagent/nutriment/protein, 12)

// a slice of bread loaf
/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/bread
	name = "bread slice"
	desc = "A well-made bread slice."
	icon_state = "bread3"
	nutriment_desc = list("bread" = 2)
	nutriment_amt = 2

// a slice of salami
/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/salami
	name = "salami"
	desc = "A preserved meat."
	icon_state = "salami"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 1)

/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/salo_slice
	name = "small piece of salo"
	desc = "A preserved meat."
	icon_state = "salo_slice"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 1)

// a slice of cheese
/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/cheese
	name = "cheese slice"
	desc = "Small enough to fit on a bread slice."
	icon_state = "cheese"
	nutriment_desc = list("cheese" = 1)
	nutriment_amt = 1
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 0.5)

// a slice of butter
/obj/item/weapon/reagent_containers/food/snacks/slice/breadsys/ontop/butter
	name = "butter"
	desc = "You need a butter to make sandwiches, right?"
	icon_state = "butter"
	nutriment_desc = list("cheap butter" = 1)
	nutriment_amt = 1
	New()
		..()
		bitesize = 1

// bread and butter
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/butterbread
	name = "bread and butter"
	desc = "A base for a sandwich."
	icon_state = "breadbutter"
	nutriment_desc = list("butter" = 2)
	nutriment_amt = 2


// a cheese sandwich
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/chsandwich
	name = "cheese sandwich"
	desc = "Cheese and butter. Nice."
	icon_state = "chsandwich"
	nutriment_desc = list("cheese" = 2, "bun" = 2)
	nutriment_amt = 2
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 2)

// a meat sandwich
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/msandwich
	name = "meat sandwich"
	desc = "Fat but filling."
	icon_state = "msandwich"
	nutriment_desc = list("meat" = 2, "bun" = 2)
	nutriment_amt = 2
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 2)

// a salami sandwich
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/salsandwich
	name = "salami sandwich"
	desc = "This is a salami sandwich.. Really, that's all... No strange spices mixed in."
	icon_state = "salsandwich"
	nutriment_desc = list("meat" = 2, "bun" = 2)
	nutriment_amt = 2
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 2)

// a sammich
/obj/item/weapon/reagent_containers/food/snacks/breadsys/ontop/sammich
	name = "sammiich"
	desc = "A great sandwich!"
	icon_state = "sammich"
	nutriment_desc = list("cheese" = 2, "meat" = 2, "bun" = 2)
	nutriment_amt = 4
	New()
		..()
		reagents.add_reagent(/datum/reagent/nutriment/protein, 2)