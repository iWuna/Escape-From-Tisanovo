/decl/hierarchy/outfit/job/redline
	name = OUTFIT_JOB_NAME("Redline")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = null
	shoes = /obj/item/clothing/shoes/black
	pda_type = null
	pda_slot = null
	backpack = null
	satchel_one = null
	messenger_bag = null
	id_type = null
	satchel_two  = null
	satchel_black = null

/decl/hierarchy/outfit/job/redline/remnantssoldier/
	name = OUTFIT_JOB_NAME("VPP Patrolman")
	uniform = /obj/item/clothing/under/vpp
	shoes = /obj/item/clothing/shoes/tactical
	id_type = /obj/item/weapon/card/id
	l_hand = /obj/item/weapon/melee/classic_baton
	l_pocket = /obj/item/weapon/spacecash/bundle/randmidclass/

/decl/hierarchy/outfit/job/redline/remnantssoldier/pre_equip(mob/living/carbon/human/H)
	..()
	belt = pick(/obj/item/weapon/gun/projectile/revolver/chevalier)

/decl/hierarchy/outfit/job/redline/remnantssoldier/sarge
	name = OUTFIT_JOB_NAME("VPP Sergeant")
	uniform = /obj/item/clothing/under/vpp/sergeant
	l_hand = /obj/item/weapon/melee/classic_baton/wooden
	head = /obj/item/clothing/head/utility/marine
	l_pocket = /obj/item/weapon/spacecash/bundle/randarmy/

/decl/hierarchy/outfit/job/redline/intendant
	name = OUTFIT_JOB_NAME("Intendant")
	uniform = /obj/item/clothing/under/pgofficer/e7
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/storage/toggle/miljacket_army
	back = /obj/item/weapon/gun/projectile/shotgun/pump/redline
	id_type = /obj/item/weapon/card/id
	l_pocket = /obj/item/weapon/storage/wallet/random/
	belt = /obj/item/weapon/melee/classic_baton/wooden

/decl/hierarchy/outfit/job/redline/adjutant
	name = OUTFIT_JOB_NAME("Adjutant")
	uniform = /obj/item/clothing/under/pgofficer/o1
	head = /obj/item/clothing/head/provgov/officer
	shoes = /obj/item/clothing/shoes/combat
	back = /obj/item/weapon/gun/projectile/shotgun/pump/redline
	id_type = /obj/item/weapon/card/id
	l_pocket = /obj/item/weapon/storage/wallet/random/

/decl/hierarchy/outfit/job/redline/chief
	name = OUTFIT_JOB_NAME("Station Commanding Officer")
	uniform = /obj/item/clothing/under/pgofficer/o2
	head = /obj/item/clothing/head/provgov/officer/chief
	shoes = /obj/item/clothing/shoes/leather
	id_type = /obj/item/weapon/card/id
	belt = /obj/item/weapon/gun/projectile/revolver/chevalier
	l_pocket = /obj/item/weapon/storage/wallet/random/

/decl/hierarchy/outfit/job/redline/therapist
	name = OUTFIT_JOB_NAME("Therapist")
	uniform = /obj/item/clothing/under/rank/medical/blue
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/blue
	shoes = /obj/item/clothing/shoes/laceup
	id_type = /obj/item/weapon/card/id
	l_pocket = /obj/item/weapon/spacecash/bundle/randarmy/

/decl/hierarchy/outfit/job/redline/surgerist
	name = OUTFIT_JOB_NAME("Surgerist")
	uniform = /obj/item/clothing/under/rank/medical/blue
	suit = /obj/item/clothing/suit/surgicalapron
	shoes = /obj/item/clothing/shoes/black
	head = /obj/item/clothing/head/surgery/blue
	id_type = /obj/item/weapon/card/id
	l_pocket = /obj/item/weapon/storage/wallet/random/

/decl/hierarchy/outfit/job/redline/nurse
	name = OUTFIT_JOB_NAME("Nurse")
	uniform = /obj/item/clothing/under/rank/medical/purple
	suit = /obj/item/clothing/suit/storage/toggle/jacket_nurse
	head = /obj/item/clothing/head/surgery/purple
	shoes = /obj/item/clothing/shoes/leather
	id_type = /obj/item/weapon/card/id/shittycivvie
	l_pocket = /obj/item/weapon/spacecash/bundle/randlowclass/
/decl/hierarchy/outfit/job/redline/nurse/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(33))
		id = /obj/item/weapon/card/id/refugeecard

/decl/hierarchy/outfit/job/redline/nurse/pre_equip(mob/living/carbon/human/H)
	l_pocket = pick(/obj/item/weapon/spacecash/bundle/c10, /obj/item/weapon/spacecash/bundle/c20, /obj/item/weapon/spacecash/bundle/c50)

/decl/hierarchy/outfit/job/redline/merchant
	name = OUTFIT_JOB_NAME("Merchant")
	uniform = /obj/item/clothing/under/suit_jacket/nt
	shoes = /obj/item/clothing/shoes/leather
	id_type = /obj/item/weapon/card/id/
	l_pocket = /obj/item/weapon/storage/wallet/random/

/decl/hierarchy/outfit/job/redline/technician
	name = OUTFIT_JOB_NAME("Technician Deputy")
	uniform = /obj/item/clothing/under/tech
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/weapon/card/id/shittycivvie
	l_pocket = /obj/item/weapon/spacecash/bundle/randlowclass/
/decl/hierarchy/outfit/job/redline/technician/pre_equip(mob/living/carbon/human/H)
	l_pocket = pick(/obj/item/weapon/spacecash/bundle/c10, /obj/item/weapon/spacecash/bundle/c20, /obj/item/weapon/spacecash/bundle/c50, /obj/item/weapon/spacecash/bundle/c100)

/decl/hierarchy/outfit/job/redline/technician/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(50))
		suit = /obj/item/clothing/suit/storage/hazardvest
/decl/hierarchy/outfit/job/redline/chieftech
	name = OUTFIT_JOB_NAME("Chief Technician")
	uniform = /obj/item/clothing/under/chieftech
	shoes = /obj/item/clothing/shoes/combat
	l_pocket = /obj/item/weapon/storage/wallet/random/
	id_type = /obj/item/weapon/card/id

/decl/hierarchy/outfit/job/redline/refugee
	name = OUTFIT_JOB_NAME("Dweller")
	uniform = null
	shoes = null
	id_type = /obj/item/weapon/card/id/refugee

/decl/hierarchy/outfit/job/redline/refugee/pre_equip(mob/living/carbon/human/H)
	..()
	var/list/und = list(/obj/item/clothing/under/formal_pants/khaki,
						/obj/item/clothing/under/formal_pants/baggy/tan,
						/obj/item/clothing/under/casual_pants,
						/obj/item/clothing/under/casual_pants/greyjeans,
						/obj/item/clothing/under/casual_pants/baggy/youngfolksjeans,
						/obj/item/clothing/under/serviceoveralls,
						/obj/item/clothing/under/color/black,
						/obj/item/clothing/under/color/grey,
						/obj/item/clothing/under/focal,
						/obj/item/clothing/under/frontier,
						/obj/item/clothing/under/rank/ntwork,
						/obj/item/clothing/under/casual_pants/baggy/camo)
	uniform = pick(und)
	var/list/shoe = list(/obj/item/clothing/shoes/brown,
							/obj/item/clothing/shoes/black,
							/obj/item/clothing/shoes/leather,
							/obj/item/clothing/shoes/dress,
							/obj/item/clothing/shoes/workboots)
	shoes = pick(shoe)
	l_pocket = /obj/item/weapon/spacecash/bundle/randlowclass/


/decl/hierarchy/outfit/job/redline/barkeeper
	name = OUTFIT_JOB_NAME("Barkeeper")
	uniform = /obj/item/clothing/under/rank/bartender/redline
	shoes = /obj/item/clothing/shoes/leather
	l_pocket = /obj/item/weapon/storage/wallet/random/
	id_type = /obj/item/weapon/card/id

/decl/hierarchy/outfit/job/redline/waiter
	name = OUTFIT_JOB_NAME("Waiter")
	uniform = /obj/item/clothing/under/gardenersuit
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/
	l_pocket = /obj/item/weapon/spacecash/bundle/randmidclass/