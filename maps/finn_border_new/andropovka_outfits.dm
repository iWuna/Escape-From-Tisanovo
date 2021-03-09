
/decl/hierarchy/outfit/escalation
	name = "Escalation outfit"

/decl/hierarchy/outfit/escalation/nato

/decl/hierarchy/outfit/job/coldwar
	name = OUTFIT_JOB_NAME("Coldwar")
	uniform = null
	l_ear = null
	shoes = null
	pda_type = null
	pda_slot = null
	backpack = null
	satchel_one = null
	messenger_bag = null
	id = null
	satchel_two  = null
	satchel_black = null
	flags = null

/* //SOVIET ARMY --------- SUMMER MAP VERSION (WINTER BELOW)
/decl/hierarchy/outfit/job/coldwar/soviet/komvzv
	name = OUTFIT_JOB_NAME("Coldwar - Komandir Vzvoda")
	uniform = /obj/item/clothing/under/soviet/habe/lt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/soviet/officer
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	l_pocket = /obj/item/weapon/masterkey/sovco
	r_pocket = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa/

/decl/hierarchy/outfit/job/coldwar/soviet/zamkomvzv
	name = OUTFIT_JOB_NAME("Coldwar - Zamestitel' Komandira Vzvoda")
	uniform = /obj/item/clothing/under/soviet/habe/ssgt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74gl
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/ugrenades
	head = /obj/item/clothing/head/soviet/cap/afghanka
	r_pocket = /obj/item/weapon/masterkey/sovsarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/komod
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Komandir Otdeleniya")
	uniform = /obj/item/clothing/under/soviet/habe/sgt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74gl
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/ugrenades
	head = /obj/item/clothing/head/soviet/cap/afghanka
	r_pocket = /obj/item/weapon/masterkey/sovsarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/zamkomod
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Zamestitel' Komandir Otdeleniya")
	uniform = /obj/item/clothing/under/soviet/habe/ssgt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	r_pocket = /obj/item/weapon/masterkey/sovsarge
	head = /obj/item/clothing/head/garcap/soviet
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa


/decl/hierarchy/outfit/job/coldwar/soviet/strifle
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Starshiy Strelok")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	back = /obj/item/weapon/storage/backpack/gassoviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/sanitar
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Sanitar")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/field
	back_2 = /obj/item/weapon/storage/backpack/summedsan
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	holster = /obj/item/weapon/storage/belt/holster/sa
	back = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	head = /obj/item/clothing/head/garcap/soviet
	l_pocket = /obj/item/weapon/key/wpmed
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/platmgunner
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Platoon MG")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/pkm
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
    head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/platmgass
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Platoon MG Assistant")
	uniform = /obj/item/clothing/under/soviet/habe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back = /obj/item/weapon/storage/backpack/gassoviet
	l_hand = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/strelok
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Strelok")
	uniform = /obj/item/clothing/under/soviet/habe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	back = /obj/item/weapon/storage/backpack/gassoviet
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/sniper
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Snaiper")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/svd
	back = /obj/item/weapon/storage/backpack/gassoviet
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/svd
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - Soviet MG")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rpk74
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/rpk
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/rpk
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/mgass
	name = OUTFIT_JOB_NAME("Coldwar - Soviet MG Assistant")
	uniform = /obj/item/clothing/under/soviet/habe/pvt
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	shoes = /obj/item/clothing/shoes/soviet/marching
	back = /obj/item/weapon/storage/backpack/gassoviet
	l_hand = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/rpk
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/rocket
	name = OUTFIT_JOB_NAME("Coldwar - Soviet RPG")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	back = /obj/item/weapon/storage/backpack/rpgsa
	r_pocket = null
	l_hand = /obj/item/weapon/gun/launcher/rpg7
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/rocketass
	name = OUTFIT_JOB_NAME("Coldwar - Soviet RPG Assistant")
	uniform = /obj/item/clothing/under/soviet/habe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	back = /obj/item/weapon/storage/backpack/rpgsa/assistant
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/radio
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Radio Operator")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back = /obj/item/weapon/radioset/r105d
	back_2 = /obj/item/weapon/storage/backpack/gassoviet
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/radio/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/weapon/gun/projectile/automatic/rifle/aks74, /obj/item/weapon/gun/projectile/automatic/rifle/aks74u)

/decl/hierarchy/outfit/job/coldwar/soviet/doctor
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Doctor")
	uniform = /obj/item/clothing/under/soviet/habe/mllt
	shoes = /obj/item/clothing/shoes/soviet/field
	back_2 = /obj/item/weapon/storage/backpack/summedsan
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	holster = /obj/item/weapon/storage/belt/holster/sa
	head = /obj/item/clothing/head/soviet/officer
	l_pocket = /obj/item/weapon/masterkey/sadoc/
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/sa

/decl/hierarchy/outfit/job/coldwar/soviet/starshina
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Starshina")
	uniform = /obj/item/clothing/under/soviet/habe/prap
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/soviet/officer
	l_pocket = /obj/item/weapon/masterkey/sovprapor
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/harness/sa/

/decl/hierarchy/outfit/job/coldwar/soviet/zampolit
	name = OUTFIT_JOB_NAME("Coldwar - Zampolit")
	uniform = /obj/item/clothing/under/soviet/habe/mllt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/aps
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = head = /obj/item/clothing/head/soviet/officer
	l_pocket = /obj/item/weapon/masterkey/sovzampolit
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/sa

/decl/hierarchy/outfit/job/coldwar/soviet/hws_com
	name = OUTFIT_JOB_NAME("Coldwar - OTV Commander")
	uniform = /obj/item/clothing/under/soviet/habe/jsgt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = head = /obj/item/clothing/head/soviet/cap/afghanka
	l_hand = /obj/item/weapon/maptool
	r_pocket = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/hws_load
	name = OUTFIT_JOB_NAME("Coldwar - OTV Loader")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/hws_oper
	name = OUTFIT_JOB_NAME("Coldwar - OTV Operator")
	uniform = /obj/item/clothing/under/soviet/habe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa  */


//NVA --------- SUMMER MAPS
/decl/hierarchy/outfit/job/coldwar/nvaddr/rifleman
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Rifleman")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpikm
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/grenades
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	head = /obj/item/clothing/head/garcap/nvaddr
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/atrifleman
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR AT Rifleman")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpikm
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/grenades
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	back = /obj/item/weapon/gun/launcher/oneuse/rpg18
	head = /obj/item/clothing/head/garcap/nvaddr
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/marksman
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Marksman")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ssg82
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/ssg82
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/ssg82
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/nvaddr
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/funke
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Funke")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back = /obj/item/weapon/radioset/r105d
	back_2 = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/grenades
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/funke/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/weapon/gun/projectile/automatic/rifle/mpikms, /obj/item/weapon/gun/projectile/automatic/rifle/mpiakmk)

/decl/hierarchy/outfit/job/coldwar/nvaddr/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR MG")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back_2 = /obj/item/weapon/gun/projectile/automatic/nvarpk
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/rpk
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/grenades
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/grenadier
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Grenadier")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpikmgl
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/ugrenades
	r_pocket = null
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/rocket
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR RPG")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpikms
	back = /obj/item/weapon/storage/backpack/rpgsa
	l_hand = /obj/item/weapon/gun/launcher/rpg7
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/grenades
	r_pocket = null
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/rocketass
	name = OUTFIT_JOB_NAME("Coldwar - NDA DDR RPG Assistant")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpikms
	back = /obj/item/weapon/storage/backpack/rpgsa/assistant
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/mgass
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR MG Assistant")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back = /obj/item/weapon/storage/backpack/gassoviet
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpikm
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/rpk
	r_pocket = null
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/radio
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Radio Operator")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddrm
	back = /obj/item/weapon/radioset/r105d
	back_2 = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = null
	r_pocket = null
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/radio/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/weapon/gun/projectile/automatic/rifle/mpikms, /obj/item/weapon/gun/projectile/automatic/rifle/mpiakmk)


/decl/hierarchy/outfit/job/coldwar/nvaddr/strifle
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR SL Assistant")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/obergefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddr74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpiak74gl
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/ugrenades
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/komod
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR SL")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/unter
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpiak74n
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/fieldcap/nvaddr
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/grenades
	r_pocket = /obj/item/weapon/masterkey/nvasarge
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/sanitar
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Sanitater")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	r_pocket = null
	back = /obj/item/weapon/gun/projectile/automatic/rifle/mpiaks74n
	back_2 = /obj/item/weapon/storage/backpack/summedsan
	holster = /obj/item/weapon/storage/belt/holster/sa
	head = /obj/item/clothing/head/garcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	l_pocket = /obj/item/weapon/key/wpmed
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/doctor
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Field Surgerist")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/feldwebel
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	back_2 = /obj/item/weapon/storage/backpack/summedsan
	left_pouch = null
	holster = /obj/item/weapon/storage/belt/holster/sa
	l_pocket = /obj/item/weapon/masterkey/nvadoc
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/nvakapt
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Quartermaster")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/feldwebel
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpiaks74n
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/nvaddr/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	r_pocket = /obj/item/weapon/masterkey/nvaprapor
	belt = /obj/item/weapon/storage/belt/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/zamkomvzv
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Platoon Leader Deputy")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/feldwebel
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpiak74n
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/fieldcap/nvaddr
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	r_pocket = /obj/item/weapon/masterkey/nvasarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/nvaddr/

/decl/hierarchy/outfit/job/coldwar/nvaddr/komvzv
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Platoon Leader")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/leutnant
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpiaks74n
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	l_pocket = /obj/item/weapon/masterkey/nvaco
	r_pocket = null
	head = /obj/item/clothing/head/nvaddr/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/nvaddr/

/decl/hierarchy/outfit/job/coldwar/nvaddr/politoffizier
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Political Commisar")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/leutnant
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/waltherppk
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	l_pocket = /obj/item/weapon/masterkey/nvaco
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	head = /obj/item/clothing/head/nvaddr/officer
	belt = /obj/item/weapon/storage/belt/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/platmgunner
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Platoon MG")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/pkm
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr/pkm
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	back = /obj/item/weapon/storage/backpack/gassoviet
	head = /obj/item/clothing/head/garcap/nvaddr
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

/decl/hierarchy/outfit/job/coldwar/nvaddr/platmgass
	name = OUTFIT_JOB_NAME("Coldwar - NVA DDR Platoon MG Assistant")
	uniform = /obj/item/clothing/under/nvaddr/strichtarn/sold
	shoes = /obj/item/clothing/shoes/soviet/marching/nva
	holster = /obj/item/weapon/storage/belt/holster/sheath/ddr74
	back = /obj/item/weapon/storage/backpack/gassoviet
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/mpiak74n
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/nvaddr
	right_pouch =/obj/item/weapon/storage/belt/suit/ammo/nvaddr/pkm
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/nva
	head = /obj/item/clothing/head/garcap/nvaddr
	belt = /obj/item/weapon/storage/belt/harness/nvaddr

//SOVIET ARMY --------- WINTER MAP VERSION (SUMMER ABOVE)
/decl/hierarchy/outfit/job/coldwar/soviet/komvzv
	name = OUTFIT_JOB_NAME("Coldwar - Komandir Vzvoda")
	uniform = /obj/item/clothing/under/soviet/habe/lt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/ushanka/soviet/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	l_pocket = /obj/item/weapon/masterkey/sovco
	r_pocket = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa/

/decl/hierarchy/outfit/job/coldwar/soviet/zamkomvzv
	name = OUTFIT_JOB_NAME("Coldwar - Zamestitel' Komandira Vzvoda")
	uniform = /obj/item/clothing/under/soviet/habe/ssgt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/ak74gl
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/ugrenades
	head = /obj/item/clothing/head/ushanka/soviet/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	r_pocket = /obj/item/weapon/masterkey/sovsarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa


/decl/hierarchy/outfit/job/coldwar/soviet/komod
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Komandir Otdeleniya")
	uniform = /obj/item/clothing/under/soviet/airhabe/sgt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/ugrenades
	head = /obj/item/clothing/head/helmet/coldwar/soviet/altyn
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	r_pocket = /obj/item/weapon/masterkey/sovsarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/zamkomod
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Zamestitel' Komandir Otdeleniya")
	uniform = /obj/item/clothing/under/soviet/airhabe/ssgt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	head = /obj/item/clothing/head/ushanka/soviet/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	r_pocket = /obj/item/weapon/masterkey/sovsarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/strifle
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Starshiy Strelok")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	back = /obj/item/weapon/storage/backpack/gassoviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/sanitar
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Sanitar")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/field
	back_2 = /obj/item/weapon/storage/backpack/summedsan
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	holster = /obj/item/weapon/storage/belt/holster/sa
	back = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	l_pocket = /obj/item/weapon/key/wpmed
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/platmgunner
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Platoon MG")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/pkm
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/helmet/coldwar/soviet/altyn
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/platmgass
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Platoon MG Assistant")
	uniform = /obj/item/clothing/under/soviet/airhabe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back = /obj/item/weapon/storage/backpack/gassoviet
	l_hand = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/strelok
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Strelok")
	uniform = /obj/item/clothing/under/soviet/airhabe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/gassoviet
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/atstrelok
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Strelok(AT)")
	uniform = /obj/item/clothing/under/soviet/airhabe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/gun/launcher/oneuse/rpg18/rpg22
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/sniper
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Snaiper")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/svd
	back = /obj/item/weapon/storage/backpack/gassoviet
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/svd
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - Soviet MG")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rpk74
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/rpk
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/rpk
	back = /obj/item/weapon/storage/backpack/gassoviet
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/mgass
	name = OUTFIT_JOB_NAME("Coldwar - Soviet MG Assistant")
	uniform = /obj/item/clothing/under/soviet/airhabe/pvt
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	shoes = /obj/item/clothing/shoes/soviet/marching
	back = /obj/item/weapon/storage/backpack/gassoviet
	l_hand = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/rpk
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/gassoviet
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/rocket
	name = OUTFIT_JOB_NAME("Coldwar - Soviet RPG")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	back = /obj/item/weapon/storage/backpack/rpgsa
	r_pocket = null
	l_hand = /obj/item/weapon/gun/launcher/rpg7
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/rocketass
	name = OUTFIT_JOB_NAME("Coldwar - Soviet RPG Assistant")
	uniform = /obj/item/clothing/under/soviet/airhabe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/rpgsa/assistant
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/radio
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Radio Operator")
	uniform = /obj/item/clothing/under/soviet/airhabe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back = /obj/item/weapon/radioset/r105d
	back_2 = /obj/item/weapon/storage/backpack/gassoviet
	r_pocket = null
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/radio/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/weapon/gun/projectile/automatic/rifle/aks74, /obj/item/weapon/gun/projectile/automatic/rifle/aks74u)

/decl/hierarchy/outfit/job/coldwar/soviet/doctor
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Doctor")
	uniform = /obj/item/clothing/under/soviet/airhabe/mllt
	shoes = /obj/item/clothing/shoes/soviet/field
	back_2 = /obj/item/weapon/storage/backpack/summedsan
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	holster = /obj/item/weapon/storage/belt/holster/sa
	head = /obj/item/clothing/head/ushanka/soviet/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	l_pocket = /obj/item/weapon/masterkey/sadoc/
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/sa

/decl/hierarchy/outfit/job/coldwar/soviet/starshina
	name = OUTFIT_JOB_NAME("Coldwar - Soviet Starshina")
	uniform = /obj/item/clothing/under/soviet/airhabe/prap
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/sa
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aks74
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/ushanka/soviet/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	l_pocket = /obj/item/weapon/masterkey/sovprapor
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/harness/sa/

/decl/hierarchy/outfit/job/coldwar/soviet/zampolit
	name = OUTFIT_JOB_NAME("Coldwar - Zampolit")
	uniform = /obj/item/clothing/under/soviet/airhabe/mllt
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/aps
	back = /obj/item/weapon/storage/backpack/soviet_tabletbag
	head = /obj/item/clothing/head/ushanka/soviet/officer
	suit = /obj/item/clothing/suit/armor/vest/coat/sa/officer
	l_pocket = /obj/item/weapon/masterkey/sovzampolit
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/sa

/decl/hierarchy/outfit/job/coldwar/soviet/hws_com
	name = OUTFIT_JOB_NAME("Coldwar - OTV Commander")
	uniform = /obj/item/clothing/under/soviet/airhabe/jsgt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet/officer
	l_hand = /obj/item/weapon/maptool
	r_pocket = null
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/hws_load
	name = OUTFIT_JOB_NAME("Coldwar - OTV Loader")
	uniform = /obj/item/clothing/under/soviet/habe/gefr
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa

/decl/hierarchy/outfit/job/coldwar/soviet/hws_oper
	name = OUTFIT_JOB_NAME("Coldwar - OTV Operator")
	uniform = /obj/item/clothing/under/soviet/habe/pvt
	shoes = /obj/item/clothing/shoes/soviet/marching
	holster = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/aek971
	back = /obj/item/weapon/storage/backpack/gassoviet
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	r_pocket = null
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/grenades
	suit = /obj/item/clothing/suit/armor/vest/coat/sa
	head = /obj/item/clothing/head/ushanka/soviet
	belt = /obj/item/weapon/storage/belt/harness/sa


//FINNISH ------------- WINTER MAPS
/decl/hierarchy/outfit/job/coldwar/finn/rifleman
	name = OUTFIT_JOB_NAME("Coldwar - FINN Rifleman")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/srad
	name = OUTFIT_JOB_NAME("Coldwar - FINN Squad Radio Operator")
	uniform = /obj/item/clothing/under/finn/talvimetsa/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back_2 = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	l_hand = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	back = /obj/item/weapon/radioset/r105d
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - FINN MG")
	uniform = /obj/item/clothing/under/finn/talvimetsa/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/kk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/lmg
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/rocket
	name = OUTFIT_JOB_NAME("Coldwar - FINN RPG")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	back_2 = /obj/item/weapon/gun/launcher/finnrpg
	back = /obj/item/weapon/storage/backpack/rpgfin
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/rocketlead
	name = OUTFIT_JOB_NAME("Coldwar - FINN RPG Leader")
	uniform = /obj/item/clothing/under/finn/talvimetsa/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	back_2 = /obj/item/weapon/gun/launcher/finnrpg
	back = /obj/item/weapon/storage/backpack/rpgfin
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	head = /obj/item/clothing/head/ushanka/finn
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/rocketass
	name = OUTFIT_JOB_NAME("Coldwar - FINN RPG Assistant")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	back = /obj/item/weapon/storage/backpack/rpgsa/assistant
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/mgass
	name = OUTFIT_JOB_NAME("Coldwar - FINN MG Assistant")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back = /obj/item/weapon/storage/backpack/finn/finn_backpack
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/lmg
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/radio
	name = OUTFIT_JOB_NAME("Coldwar - FINN HQ Radio Operator")
	uniform = /obj/item/clothing/under/finn/talvimetsa/cpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back = /obj/item/weapon/radioset/r105d
	back_2 = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	l_hand = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/sld
	name = OUTFIT_JOB_NAME("Coldwar - FINN SL Deputy")
	uniform = /obj/item/clothing/under/finn/talvimetsa/cpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/sl
	name = OUTFIT_JOB_NAME("Coldwar - FINN SL")
	uniform = /obj/item/clothing/under/finn/talvimetsa/sgt
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	back = /obj/item/weapon/storage/backpack/finn/finn_backpack
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	r_pocket = /obj/item/weapon/masterkey/nvasarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/corpsman
	name = OUTFIT_JOB_NAME("Coldwar - FINN Corpsman")
	uniform = /obj/item/clothing/under/finn/talvimetsa/cpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/field
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	r_pocket = null
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	back = /obj/item/weapon/storage/backpack/finn/medical
	holster = /obj/item/weapon/storage/belt/holster/finn
	head = /obj/item/clothing/head/ushanka/finn
	l_pocket = /obj/item/weapon/key/wpmed
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/doctor
	name = OUTFIT_JOB_NAME("Coldwar - FINN Field Surgerist")
	uniform = /obj/item/clothing/under/finn/talvimetsa/surgeon
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/field
	back = /obj/item/weapon/storage/backpack/finn/medical
	left_pouch = null
	holster = /obj/item/weapon/storage/belt/holster/finn
	l_pocket = /obj/item/weapon/masterkey/nvadoc
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/quart
	name = OUTFIT_JOB_NAME("Coldwar - FINN Quartermaster")
	uniform = /obj/item/clothing/under/finn/talvimetsa/ltdep
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	shoes = /obj/item/clothing/shoes/soviet/field
	back = /obj/item/weapon/storage/backpack/finn/finn_backpack
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	r_pocket = /obj/item/weapon/masterkey/nvaprapor
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/plass
	name = OUTFIT_JOB_NAME("Coldwar - FINN Platoon Leader Deputy")
	uniform = /obj/item/clothing/under/finn/talvimetsa/ltdep
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	shoes = /obj/item/clothing/shoes/soviet/field
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/soviet74
	r_pocket = /obj/item/weapon/masterkey/nvasarge
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/pl
	name = OUTFIT_JOB_NAME("Coldwar - FINN Platoon Leader")
	uniform = /obj/item/clothing/under/finn/talvimetsa/lt
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	l_pocket = /obj/item/weapon/masterkey/nvaco
	r_pocket = null
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/platmgunner
	name = OUTFIT_JOB_NAME("Coldwar - FINN Platoon MG")
	uniform = /obj/item/clothing/under/finn/talvimetsa/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/kk62
	right_pouch =/obj/item/weapon/storage/belt/suit/ammo/finn/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/platmgass
	name = OUTFIT_JOB_NAME("Coldwar - FINN Platoon MG Assistant")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back = /obj/item/weapon/storage/backpack/finn/finn_backpack
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch =/obj/item/weapon/storage/belt/suit/ammo/finn/lmg
	r_pocket = null
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/hwtlead
	name = OUTFIT_JOB_NAME("Coldwar - FINN Heavy Weapons Commander")
	uniform = /obj/item/clothing/under/finn/talvimetsa/sgt
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/field
	holster = /obj/item/weapon/storage/belt/holster/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	l_pocket = /obj/item/weapon/masterkey/nvaco
	r_pocket = null
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	l_hand = /obj/item/weapon/maptool
	l_ear = /obj/item/device/binoculars/wp
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/hwtgnr
	name = OUTFIT_JOB_NAME("Coldwar - FINN Heavy Weapons Gunner")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	back = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/hwtload
	name = OUTFIT_JOB_NAME("Coldwar - FINN Heavy Weapons Loader")
	uniform = /obj/item/clothing/under/finn/talvimetsa/p
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/sheath/finn
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/rk62
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/finn/grenades
	back = /obj/item/weapon/storage/backpack/finn/finn_backpack
	head = /obj/item/clothing/head/ushanka/finn
	belt = /obj/item/weapon/storage/belt/harness/finn/

/decl/hierarchy/outfit/job/coldwar/finn/marksman
	name = OUTFIT_JOB_NAME("Coldwar - FINN Designated Marksman")
	uniform = /obj/item/clothing/under/finn/talvimetsa/cpl
	suit = /obj/item/clothing/suit/armor/vest/coat/finn
	shoes = /obj/item/clothing/shoes/soviet/marching/finn
	holster = /obj/item/weapon/storage/belt/holster/finn
	back = /obj/item/weapon/gun/projectile/rifle/boltaction/tkiv
	back_2 = /obj/item/weapon/storage/backpack/finn/finn_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/tkiv
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/sa/tkiv
	head = /obj/item/clothing/head/finn/cap/talvimetsa
	belt = /obj/item/weapon/storage/belt/harness/finn/


	//////////////////////////////////////
	///////////// NATO ARMIES BELOW THIS POINT


//USMC -------------- WINTER MAPS
/decl/hierarchy/outfit/job/coldwar/usmc/rifleman
	name = OUTFIT_JOB_NAME("Coldwar - USMC Rifleman")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/rifleman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/lat
	name = OUTFIT_JOB_NAME("Coldwar - USMC LAT Rifleman")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/gun/launcher/oneuse/m72
	head = /obj/item/clothing/head/usmc/cap/woodland
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/lat/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/grenadier
	name = OUTFIT_JOB_NAME("Coldwar - USMC Grenadier")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc/ugrenades
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/grenadier/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - USMC Machine Gunner")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/lcpl
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/xm249
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc/lmg
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	holster = /obj/item/weapon/storage/belt/holster/usmc
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/mgunner/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)


/decl/hierarchy/outfit/job/coldwar/usmc/mgunnera
	name = OUTFIT_JOB_NAME("Coldwar - USMC Machine Gunner Assistant")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc/lmg
	r_pocket = null
	head = /obj/item/clothing/head/usmc/cap/woodland
	back = /obj/item/weapon/storage/backpack/alice/medium
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/mgunnera/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/atcommander
	name = OUTFIT_JOB_NAME("Coldwar - USMC AT Commander")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/cpl
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/gun/launcher/smaw
	head = /obj/item/clothing/head/usmc/cap/woodland
	holster = /obj/item/weapon/storage/belt/holster/usmc
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc



/decl/hierarchy/outfit/job/coldwar/usmc/atgunner
	name = OUTFIT_JOB_NAME("Coldwar - USMC AT Gunner")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/lcpl
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	r_hand = /obj/item/weapon/gun/launcher/smaw
	back = /obj/item/weapon/storage/backpack/rpgusa
	holster = /obj/item/weapon/storage/belt/holster/usmc
	belt = /obj/item/weapon/storage/belt/harness/usmc



/decl/hierarchy/outfit/job/coldwar/usmc/atass
	name = OUTFIT_JOB_NAME("Coldwar - USMC AT Assistant")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/rpgusa
	belt = /obj/item/weapon/storage/belt/harness/usmc


/decl/hierarchy/outfit/job/coldwar/usmc/ftleader
	name = OUTFIT_JOB_NAME("Coldwar - USMC FT Leader")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/cpl
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back_2 = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/ftleader/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/sl
	name = OUTFIT_JOB_NAME("Coldwar - USMC SL")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/ssgt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/storage/backpack/usmc_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	back = /obj/item/weapon/radioset/prc77
	holster = /obj/item/weapon/storage/belt/holster/usmc
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	l_ear = /obj/item/device/binoculars/nato
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/sl/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/corpsman
	name = OUTFIT_JOB_NAME("Coldwar - USMC Corpsman")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/lcpl
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	back = /obj/item/weapon/storage/backpack/usmcm3
	head = /obj/item/clothing/head/usmc/cap/woodland
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	l_pocket = /obj/item/weapon/key/natomed
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/corpsman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)

/decl/hierarchy/outfit/job/coldwar/usmc/doctor
	name = OUTFIT_JOB_NAME("Coldwar - USMC Field Surgerist")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/scndlt
	shoes = /obj/item/clothing/shoes/usmc/field
	back = /obj/item/weapon/storage/backpack/usmcm3
	left_pouch = null
	holster = /obj/item/weapon/storage/belt/holster/usmc
	l_pocket = /obj/item/weapon/masterkey/usmcdoc
	r_pocket = null
	belt = /obj/item/weapon/storage/belt/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/doctor/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(/obj/item/clothing/head/usmc/wcap/black, /obj/item/clothing/head/usmc/wcap/green, /obj/item/clothing/head/usmc/wcap/brown, /obj/item/clothing/head/usmc/wcap/blue)

/decl/hierarchy/outfit/job/coldwar/usmc/platlead
	name = OUTFIT_JOB_NAME("Coldwar - Platoon Leader")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/fstlt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	holster = /obj/item/weapon/storage/belt/holster/usmc
	l_pocket = /obj/item/weapon/masterkey/usmclt
	r_pocket = null
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/usmc


/decl/hierarchy/outfit/job/coldwar/usmc/platlead/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(/obj/item/clothing/head/usmc/wcap/black, /obj/item/clothing/head/usmc/wcap/green, /obj/item/clothing/head/usmc/wcap/brown, /obj/item/clothing/head/usmc/wcap/blue)


/decl/hierarchy/outfit/job/coldwar/usmc/platleaddep
	name = OUTFIT_JOB_NAME("Coldwar - Platoon Leader Deputy")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/msgt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	holster = /obj/item/weapon/storage/belt/holster/usmc
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	r_pocket = null
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/usmc


/decl/hierarchy/outfit/job/coldwar/usmc/platleaddep/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(/obj/item/clothing/head/usmc/wcap/black, /obj/item/clothing/head/usmc/wcap/green, /obj/item/clothing/head/usmc/wcap/brown, /obj/item/clothing/head/usmc/wcap/blue)


/decl/hierarchy/outfit/job/coldwar/usmc/ratelo
	name = OUTFIT_JOB_NAME("Coldwar - USMC RATELO")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/lcpl
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/storage/backpack/usmc_buttpack
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/radioset/prc77
	head = /obj/item/clothing/head/usmc/boonie/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc



/decl/hierarchy/outfit/job/coldwar/usmc/messenger
	name = OUTFIT_JOB_NAME("Coldwar - USMC HQ Messenger")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/boonie/woodland
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	l_ear = null
	belt = /obj/item/weapon/storage/belt/harness/usmc



/decl/hierarchy/outfit/job/coldwar/usmc/marksman
	name = OUTFIT_JOB_NAME("Coldwar - USMC Designated Marksman")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sgt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/rifle/boltaction/m40a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/m40
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/m40
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	holster = /obj/item/weapon/storage/belt/holster/usmc
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/marksman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/m1)



/decl/hierarchy/outfit/job/coldwar/usmc/quartermaster
	name = OUTFIT_JOB_NAME("Coldwar - USMC Quartermaster")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/gysgt
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	belt = /obj/item/weapon/storage/belt/harness/usmc


/decl/hierarchy/outfit/job/coldwar/usmc/quartermaster/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(/obj/item/clothing/head/usmc/wcap/black, /obj/item/clothing/head/usmc/wcap/green, /obj/item/clothing/head/usmc/wcap/brown, /obj/item/clothing/head/usmc/wcap/blue)


/decl/hierarchy/outfit/job/coldwar/usmc/hws_commander
	name = OUTFIT_JOB_NAME("Coldwar - USMC HWS Commander")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sgt
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/usmc
	r_pocket = /obj/item/weapon/maptool


/decl/hierarchy/outfit/job/coldwar/usmc/hws_commander/pre_equip(mob/living/carbon/human/H)
	..()
	head = pick(/obj/item/clothing/head/usmc/wcap/black, /obj/item/clothing/head/usmc/wcap/green, /obj/item/clothing/head/usmc/wcap/brown, /obj/item/clothing/head/usmc/wcap/blue)

/decl/hierarchy/outfit/job/coldwar/usmc/hws_loader
	name = OUTFIT_JOB_NAME("Coldwar - USMC HWS Loader")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/alice/medium
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc



/decl/hierarchy/outfit/job/coldwar/usmc/hws_operator
	name = OUTFIT_JOB_NAME("Coldwar - USMC HWS Operator")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/lcpl
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc



//BAF ------------- WINTER MAPS
/decl/hierarchy/outfit/job/coldwar/baf/rifleman
	name = OUTFIT_JOB_NAME("Coldwar - BAF Rifleman")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/rifleman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - BAF Machine Gunner")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/l7a2
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf/lmg
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/mgunner/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/mgunnera
	name = OUTFIT_JOB_NAME("Coldwar - BAF Machine Gunner Assistant")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf/lmg
	back = /obj/item/weapon/storage/backpack/baf/medium
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/mgunnera/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/atcommander
	name = OUTFIT_JOB_NAME("Coldwar - BAF AT Commander")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back_2 = /obj/item/weapon/gun/launcher/carlgustaf
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_med
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/atcommander/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/atgunner
	name = OUTFIT_JOB_NAME("Coldwar - BAF AT Gunner")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back = /obj/item/weapon/storage/backpack/rpgbrit
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf/s
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf/s
	back_2 = /obj/item/weapon/gun/launcher/carlgustaf
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/sterling
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/atgunner/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/atass
	name = OUTFIT_JOB_NAME("Coldwar - BAF AT Assistant")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/rpgbrit
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/atass/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/ftleader
	name = OUTFIT_JOB_NAME("Coldwar - BAF FT Leader")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/ftleader/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/sl
	name = OUTFIT_JOB_NAME("Coldwar - BAF SL")
	uniform = /obj/item/clothing/under/brit/tiger/alt/cpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back_2 = /obj/item/weapon/storage/backpack/baf_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/radioset/prc77
	holster = /obj/item/weapon/storage/belt/holster/baf
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	l_ear = /obj/item/device/binoculars/nato
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/sl/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/medic
	name = OUTFIT_JOB_NAME("Coldwar - BAF Field Medic")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_med
	l_pocket = /obj/item/weapon/key/natomed
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/medic/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/doctor
	name = OUTFIT_JOB_NAME("Coldwar - BAF Field Surgeon")
	uniform = /obj/item/clothing/under/brit/tiger/alt/sgt
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back = /obj/item/weapon/storage/backpack/baf_med
	holster = /obj/item/weapon/storage/belt/holster/baf
	l_pocket = /obj/item/weapon/masterkey/usmcdoc
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/platlead
	name = OUTFIT_JOB_NAME("Coldwar - BAF Platoon Leader")
	uniform = /obj/item/clothing/under/brit/tiger/alt/lt
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	holster = /obj/item/weapon/storage/belt/holster/baf
	l_pocket = /obj/item/weapon/masterkey/usmclt
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/platlead/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/platleaddep
	name = OUTFIT_JOB_NAME("Coldwar - BAF Platoon Leader Deputy")
	uniform = /obj/item/clothing/under/brit/tiger/alt/sgt
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	holster = /obj/item/weapon/storage/belt/holster/baf
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/platleaddep/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/rto
	name = OUTFIT_JOB_NAME("Coldwar - BAF Radiotelephone Operator")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/baf
	back_2 = /obj/item/weapon/storage/backpack/baf_buttpack
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/radioset/prc77
	belt = /obj/item/weapon/storage/belt/harness/baf
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/rto/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/hws_commander
	name = OUTFIT_JOB_NAME("Coldwar - BAF HWS Commander")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	r_pocket = /obj/item/weapon/maptool
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/hws_commander/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/hws_loader
	name = OUTFIT_JOB_NAME("Coldwar - BAF HWS Loader")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/hws_loader/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/hws_operator
	name = OUTFIT_JOB_NAME("Coldwar - BAF HWS Operator")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/p
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l1a1
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/hws_operator/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

/decl/hierarchy/outfit/job/coldwar/baf/marksman
	name = OUTFIT_JOB_NAME("Coldwar - BAF Designated Marksman")
	uniform = /obj/item/clothing/under/brit/tiger/olive/alt/lcpl
	suit = /obj/item/clothing/suit/armor/vest/coat/brit
	shoes = /obj/item/clothing/shoes/baf/field
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf/l96
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/baf/l96
	back = /obj/item/weapon/storage/backpack/baf_buttpack
	holster = /obj/item/weapon/storage/belt/holster/baf
	belt = /obj/item/weapon/storage/belt/harness/baf
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/l96
	head = /obj/item/clothing/head/beret/baf

/decl/hierarchy/outfit/job/coldwar/baf/hws_commander/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/baf/mkv, /obj/item/clothing/head/helmet/coldwar/baf/mkv/cover)

//BDW --------- SUMMER MAPS
/decl/hierarchy/outfit/escalation/nato/bundes/
	flags = null

/decl/hierarchy/outfit/escalation/nato/bundes/rifleman
	name = OUTFIT_JOB_NAME("Coldwar - BDW Rifleman")
	uniform = /obj/item/clothing/under/bundeswehr/olive/soldat
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/rifleman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/atrifleman
	name = OUTFIT_JOB_NAME("Coldwar - BDW AT Rifleman")
	uniform = /obj/item/clothing/under/bundeswehr/olive/soldat
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	r_pocket = null
	back = /obj/item/weapon/gun/launcher/oneuse/m72
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/rifleman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - BDW Machine Gunner")
	uniform = /obj/item/clothing/under/bundeswehr/olive/soldat
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/bdw
	back_2 = /obj/item/weapon/gun/projectile/automatic/mg3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/mgunner/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/bdwatlead
	name = OUTFIT_JOB_NAME("Coldwar - BDW AT Gruppenfuhrer")
	uniform = /obj/item/clothing/under/bundeswehr/olive/hauptgefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/bdw
	back = /obj/item/weapon/storage/backpack/alice/medium
	back_2 = /obj/item/weapon/gun/launcher/smaw
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	head = /obj/item/clothing/head/garcap/bundeswehr
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	belt = /obj/item/weapon/storage/belt/harness/bdw
	l_ear = /obj/item/device/binoculars/nato

/decl/hierarchy/outfit/escalation/nato/bundes/bdwatlead/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/bdwatkanonier
	name = OUTFIT_JOB_NAME("Coldwar - BDW AT Kanonier")
	uniform = /obj/item/clothing/under/bundeswehr/olive/gefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/bdw
	back = /obj/item/weapon/storage/backpack/
	back_2 = /obj/item/weapon/gun/launcher/carlgustaf
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	r_pocket = null
	head = /obj/item/clothing/head/garcap/bundeswehr
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/bdwatkanonier/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/bdwatassist
	name = OUTFIT_JOB_NAME("Coldwar - BDW AT Assistent Schutze")
	uniform = /obj/item/clothing/under/bundeswehr/olive/soldat
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	back = /obj/item/weapon/storage/backpack/rpgusa
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/bdwatassist/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/radioman
	name = OUTFIT_JOB_NAME("Coldwar - BDW Radio Operator")
	uniform = /obj/item/clothing/under/bundeswehr/olive/hauptgefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/storage/backpack/bundes_buttpack
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	head = /obj/item/clothing/head/garcap/bundeswehr
	back = /obj/item/weapon/radioset/prc77
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/radioman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/grenadier
	name = OUTFIT_JOB_NAME("Coldwar - BDW Grenadier")
	uniform = /obj/item/clothing/under/bundeswehr/olive/soldat
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3tgs
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw/ugrenades
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/grenadier/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/mgunnera
	name = OUTFIT_JOB_NAME("Coldwar - BDW Machine Gunner Assistant")
	uniform = /obj/item/clothing/under/bundeswehr/olive/soldat
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw/lmg
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/mgunnera/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/sqleader
	name = OUTFIT_JOB_NAME("Coldwar - BDW Squad Leader")
	uniform = /obj/item/clothing/under/bundeswehr/olive/unter
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/bdw
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	l_ear = /obj/item/device/binoculars/nato
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/usmc/cap/bundeswehr
	l_pocket = /obj/item/weapon/masterkey/bdwsarge
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/sqleader/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/sqleaderdep
	name = OUTFIT_JOB_NAME("Coldwar - BDW Squad Leader Deputy")
	uniform = /obj/item/clothing/under/bundeswehr/olive/gefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/sqleaderdep/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/corpsman
	name = OUTFIT_JOB_NAME("Coldwar - BDW Corpsman")
	uniform = /obj/item/clothing/under/bundeswehr/olive/hauptgefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	back = /obj/item/weapon/storage/backpack/bundes_med
	head = /obj/item/clothing/head/garcap/bundeswehr
	l_pocket = /obj/item/weapon/key/natomed
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/corpsman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/doctor
	name = OUTFIT_JOB_NAME("Coldwar - BDW Field Surgerist")
	uniform = /obj/item/clothing/under/bundeswehr/olive/leutnant
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/storage/backpack/bundes_med
	head = /obj/item/clothing/head/usmc/cap/bundeswehr
	l_pocket = /obj/item/weapon/masterkey/bdwdoc
	belt = /obj/item/weapon/storage/belt/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/platlead
	name = OUTFIT_JOB_NAME("Coldwar - BDW Platoon Leader")
	uniform = /obj/item/clothing/under/bundeswehr/olive/leutnant
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	holster = /obj/item/weapon/storage/belt/holster/bdw
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	l_ear = /obj/item/device/binoculars/nato
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/usmc/cap/bundeswehr
	l_pocket = /obj/item/weapon/masterkey/bdwlt
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/platlead/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/platleaddep
	name = OUTFIT_JOB_NAME("Coldwar - BDW Platoon Leader Deputy")
	uniform = /obj/item/clothing/under/bundeswehr/olive/stabsunter
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	holster = /obj/item/weapon/storage/belt/holster/bdw
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	l_ear = /obj/item/device/binoculars/nato
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/usmc/cap/bundeswehr
	l_pocket = /obj/item/weapon/masterkey/bdwsarge
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/platleaddep/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/ratelo
	name = OUTFIT_JOB_NAME("Coldwar - BDW RATELO")
	uniform = /obj/item/clothing/under/bundeswehr/olive/stabsgefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/storage/backpack/bundes_buttpack
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	back = /obj/item/weapon/radioset/prc77
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/ratelo/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/messenger
	name = OUTFIT_JOB_NAME("Coldwar - BDW HQ Messenger")
	uniform = /obj/item/clothing/under/bundeswehr/olive/gefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	holster = /obj/item/weapon/storage/belt/holster/sheath/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3a3
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/messenger/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/marksman
	name = OUTFIT_JOB_NAME("Coldwar - BDW Designated Marksman")
	uniform = /obj/item/clothing/under/bundeswehr/olive/gefr
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/bdw
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/g3sg1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/garcap/bundeswehr
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/marksman/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

/decl/hierarchy/outfit/escalation/nato/bundes/quartermaster
	name = OUTFIT_JOB_NAME("Coldwar - BDW Quartermaster")
	uniform = /obj/item/clothing/under/bundeswehr/olive/unter
	suit = /obj/item/clothing/suit/armor/vest/coat/bdw
	shoes = /obj/item/clothing/shoes/bundeswehr/field
	holster = /obj/item/weapon/storage/belt/holster/bdw
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/bdw
	back = /obj/item/weapon/storage/backpack/bundes_buttpack
	head = /obj/item/clothing/head/usmc/cap/bundeswehr
	l_pocket = /obj/item/weapon/masterkey/bdwsarge
	belt = /obj/item/weapon/storage/belt/harness/bdw

/decl/hierarchy/outfit/escalation/nato/bundes/quartermaster/pre_equip(mob/living/carbon/human/H)
	..()
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/bdw/m62, /obj/item/clothing/head/helmet/coldwar/bdw/m62/foliage, /obj/item/clothing/head/helmet/coldwar/bdw/m62/cover)

//USA ------------- SUMMER MAPS
/decl/hierarchy/outfit/job/coldwar/usa/rifleman
	name = OUTFIT_JOB_NAME("Coldwar - USA Rifleman")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/rifleman/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/grenadier
	name = OUTFIT_JOB_NAME("Coldwar - USA Grenadier")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/spc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1gl
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc/ugrenades
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/grenadier/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/mgunner
	name = OUTFIT_JOB_NAME("Coldwar - USA Machine Gunner")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/spc
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/m60
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	holster = /obj/item/weapon/storage/belt/holster/usmc
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/mgunner/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/mgunnera
	name = OUTFIT_JOB_NAME("Coldwar - USA Machine Gunner Assistant")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc/lmg
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/alice/medium
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/mgunnera/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/atcommander
	name = OUTFIT_JOB_NAME("Coldwar - USA AT Commander")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sgt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/launcher/smaw
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/alice/medium
	head = /obj/item/clothing/head/usmc/cap/woodland
	holster = /obj/item/weapon/storage/belt/holster/usmc
	belt = /obj/item/weapon/storage/belt/harness/usmc
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1

/decl/hierarchy/outfit/job/coldwar/usmc/atgunner/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/atgunner
	name = OUTFIT_JOB_NAME("Coldwar - USA AT Gunner")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/cpl
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back = /obj/item/weapon/storage/backpack/rpgusa
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	head = /obj/item/clothing/head/usmc/cap/woodland
	holster = /obj/item/weapon/storage/belt/holster/usmc
	belt = /obj/item/weapon/storage/belt/harness/usmc
	r_hand = /obj/item/weapon/gun/launcher/smaw

/decl/hierarchy/outfit/job/coldwar/usa/atgunner/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/atass
	name = OUTFIT_JOB_NAME("Coldwar - USA AT Assistant")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/rpgusa
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usmc/atass/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/ftleader
	name = OUTFIT_JOB_NAME("Coldwar - USA FT Leader")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sgt
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back_2 = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/ftleader/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/sl
	name = OUTFIT_JOB_NAME("Coldwar - USA SL")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/ssgt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/storage/backpack/usmc_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	back = /obj/item/weapon/radioset/prc77
	holster = /obj/item/weapon/storage/belt/holster/usmc
	head = /obj/item/clothing/head/usmc/cap/woodland
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	l_ear = /obj/item/device/binoculars/nato
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/sl/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/medic
	name = OUTFIT_JOB_NAME("Coldwar - USA Field Medic")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/spc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	back = /obj/item/weapon/storage/backpack/usmcm3
	head = /obj/item/clothing/head/usmc/cap/woodland
	l_pocket = /obj/item/weapon/key/natomed
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/corpsman/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/doctor
	name = OUTFIT_JOB_NAME("Coldwar - USA Field Surgeon")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/scndlt
	shoes = /obj/item/clothing/shoes/usmc/field
	back = /obj/item/weapon/storage/backpack/usmcm3
	left_pouch = null
	holster = /obj/item/weapon/storage/belt/holster/usmc
	l_pocket = /obj/item/weapon/masterkey/usmcdoc
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/usmc

/decl/hierarchy/outfit/job/coldwar/usa/platlead
	name = OUTFIT_JOB_NAME("Coldwar - USA Platoon Leader")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/fstlt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	holster = /obj/item/weapon/storage/belt/holster/usmc
	head = /obj/item/clothing/head/usmc/cap/woodland
	l_pocket = /obj/item/weapon/masterkey/usmclt
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/platlead/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/platleaddep
	name = OUTFIT_JOB_NAME("Coldwar - USA Platoon Leader Deputy")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sfc
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	holster = /obj/item/weapon/storage/belt/holster/usmc
	head = /obj/item/clothing/head/usmc/cap/woodland
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/platleaddep/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/rto
	name = OUTFIT_JOB_NAME("Coldwar - USA Radiotelephone Operator")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/cpl
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/storage/backpack/usmc_buttpack
	r_hand = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/radioset/prc77
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/ratelo/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/messenger
	name = OUTFIT_JOB_NAME("Coldwar - USA HQ Messenger")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	suit = /obj/item/clothing/suit/storage/vest/flakvest
	l_ear = null
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/marksman
	name = OUTFIT_JOB_NAME("Coldwar - USA Designated Marksman")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sgt
	shoes = /obj/item/clothing/shoes/usmc/field
	l_pocket = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/rifle/boltaction/m40a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/m40
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/m40
	r_pocket = null
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	holster = /obj/item/weapon/storage/belt/holster/usmc
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/marksman/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/quartermaster
	name = OUTFIT_JOB_NAME("Coldwar - USA Quartermaster")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/msgt
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	head = /obj/item/clothing/head/usmc/cap/woodland
	l_pocket = /obj/item/weapon/masterkey/usmcsarge
	suit = /obj/item/clothing/suit/armor/vest/coat/usa
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/hws_commander
	name = OUTFIT_JOB_NAME("Coldwar - USA HWS Commander")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/sgt
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a2
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	r_pocket = null
	r_hand = /obj/item/weapon/maptool
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	l_ear = /obj/item/device/binoculars/nato
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/hws_commander/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/hws_loader
	name = OUTFIT_JOB_NAME("Coldwar - USA HWS Loader")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/pfc
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	back = /obj/item/weapon/storage/backpack/alice/medium
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/hws_loader/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

/decl/hierarchy/outfit/job/coldwar/usa/hws_operator
	name = OUTFIT_JOB_NAME("Coldwar - USA HWS Operator")
	uniform = /obj/item/clothing/under/usmc/woodland/alt/cpl
	shoes = /obj/item/clothing/shoes/usmc/field
	holster = /obj/item/weapon/storage/belt/holster/sheath/usmc
	back_2 = /obj/item/weapon/gun/projectile/automatic/rifle/m16a1
	left_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	right_pouch = /obj/item/weapon/storage/belt/suit/ammo/usmc
	back = /obj/item/weapon/storage/backpack/usmc_buttpack
	head = /obj/item/clothing/head/usmc/cap/woodland
	belt = /obj/item/weapon/storage/belt/harness/usmc

/decl/hierarchy/outfit/job/coldwar/usa/hws_operator/pre_equip(mob/living/carbon/human/H)
	..()
	suit = pick(/obj/item/clothing/suit/storage/vest/pasgt, /obj/item/clothing/suit/storage/vest/pasgt/woodland)
	l_hand = pick(/obj/item/clothing/head/helmet/coldwar/usmc/pasgt, /obj/item/clothing/head/helmet/coldwar/usmc/pasgt/woodland)

