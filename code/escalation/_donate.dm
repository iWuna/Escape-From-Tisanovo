/datum/donate_info
	var/name
	var/path_to
	var/cost = 0
	var/special = null
	var/stock = 30

/datum/donate_info/New(name, path, cost, special = null, stock = 30)
	src.name = name
	src.path_to = path
	src.cost = cost
	src.special = special
	src.stock = stock

/client/verb/new_donates_panel()
	set name = "Donations panel"
	set category = "OOC"


	if(!ticker || ticker.current_state != GAME_STATE_PLAYING)
		to_chat(src,"<span class='warning'>Not so fast, game still starting!</span>")
		return

	if (!GLOB.donators[ckey]) //If it doesn't exist yet
		load_donator(ckey)

	var/datum/donator/D = GLOB.donators[ckey]
	if(D)
		D.ShowPanel(src)
	else
		to_chat(src,"<span class='warning'>Donate, first.</span>")

GLOBAL_LIST_EMPTY(donate_icon_cache)
GLOBAL_LIST_EMPTY(donators)

#define DONATIONS_SPAWN_WINDOW 6000

/datum/donator
	var/ownerkey
	var/money = 0
	var/maxmoney = 0
	var/allowed_num_items = 20

/datum/donator/New(ckey, money)
	..()
	ownerkey = ckey
	src.money = money
	maxmoney = money
	GLOB.donators[ckey] = src


/datum/donator/proc/ShowPanel(mob/user)
	var/list/dat = list("<center>")
	dat += "Praise overlords!"
	dat += "</center>"

	dat += "<HR>"
	dat += "<h3>Balance: [money]</h3>"
	dat += "<div class='statusDisplay'>"
	dat += "<table>"
	for(var/L in GLOB.donations_list)
		dat += "<tr><td></td><td><center><b>[L]</b></center></td><td></td><td></td></tr>"
		for(var/datum/donate_info/prize in GLOB.donations_list[L])
			dat += "<tr><td>[prize.name]</td><td>[prize.cost]</td><td><A href='?src=\ref[src];getdonate=\ref[prize]'>Buy</A></td></tr>"
	dat += "</table>"
	dat += "</div>"

	var/datum/browser/popup = new(user, "miningvendor", "Donations Panel", 340, 700)
	popup.set_content(dat.Join())
	popup.open()

/datum/donator/Topic(href, href_list)
	var/datum/donate_info/prize = locate(href_list["getdonate"])
	var/mob/living/carbon/human/user = usr

	if(!ticker || ticker.current_state < 3)
		to_chat(user,"<span class='warning'>Game still starting!</span>")
		return 0

	if((!istype(get_area(user), /area/coldwar/usmc_safe)))
		to_chat(user,"<span class='warning'>You should be in green zone</span>")
		return 0

	if(prize.cost > money)
		to_chat(user,"<span class='warning'>Not enough money.</span>")
		return 0

	if(!allowed_num_items)
		to_chat(user,"<span class='warning'>That's all...</span>")
		return 0

	if(!user)
		to_chat(user,"<span class='warning'>You should be alive.</span>")
		return 0

	if(!ispath(prize.path_to))
		return 0

	if(user.stat)
		return 0

	if(prize.stock <= 0)
		to_chat(user,"<span class='warning'>Shipments <b>[prize.name]</b> закончились.</span>")
		return 0

	if(prize.special)
		if (prize.special != user.ckey)
			to_chat(user,"<span class='warning'>Этот предмет предназначен для <b>[prize.special]</b>.</span>")
			return 0

	var/list/slots = list(
		"bag" = slot_back,
		"left pocket" = slot_l_hand,
		"right pocket" = slot_r_hand,
		"left hand" = slot_l_hand
	)

	prize.stock--

	var/obj/spawned = new prize.path_to(user.loc)
	var/where = null

	if (ishuman(user))
		where = user.equip_in_one_of_slots(spawned, slots, qdel_on_fail=0)

	if (!where)
		to_chat(user,"<span class='info'>Ваш [prize.name] был создан!</span>")
		spawned.anchored = FALSE
	else
		to_chat(user,"<span class='info'>Ваш [prize.name] был создан в [where]!</span>")

	money -= prize.cost
	allowed_num_items--

	ShowPanel(user)
	return

proc/load_donator(ckey)
	if(!dbcon.IsConnected())
		return 0

	var/DBQuery/query_donators = dbcon.NewQuery("SELECT round(sum) FROM donations WHERE byond='[ckey]'")
	query_donators.Execute()
	while(query_donators.NextRow())
		var/money = round(text2num(query_donators.item[1]))
		new /datum/donator(ckey, money)
	qdel(query_donators)
	return 1

proc/check_donations(ckey)
	if (!GLOB.donators[ckey]) //If it doesn't exist yet
		return 0
	var/datum/donator/D = GLOB.donators[ckey]
	if(D)
		if (D.maxmoney >= 50)
			return 1
	return 0