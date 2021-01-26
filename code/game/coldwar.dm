var/roundstart_time = 0

/hook/roundstart/proc/game_start()
	roundstart_time = world.time
	return 1

var/wlg_total = 0
var/wlg_rejected = 0
var/wlg_selected_none = 0
var/wlg_selected_grass = 0
var/wlg_selected_bush = 0
var/wlg_selected_pine = 0
var/wlg_selected_deadtree = 0
var/wlg_selected_rock = 0
var/wlg_selected_cuttree = 0

/hook/startup/proc/spawn_bushes()
	world << "<b>Generating wildlife.</b>"
	wlg_total = 0
	wlg_rejected = 0
	wlg_selected_none = 0
	wlg_selected_grass = 0
	wlg_selected_bush = 0
	wlg_selected_pine = 0
	wlg_selected_deadtree = 0
	wlg_selected_rock = 0
	wlg_selected_cuttree = 0
	spawn(100)
		for(var/turf/T in world)
//			if(T.z != 2)
//				continue
			if(!istype(T, /turf/unsimulated/ground))
				continue

			if(istype(T, /turf/unsimulated/ground/sand))
				continue

			if(istype(T, /turf/unsimulated/ground/mud))
				continue

			wlg_total++

			var/rejected = FALSE
			for(var/obj/O in T.contents)
				if(istype(O, /obj/item/) || istype(O, /obj/machinery/) || istype(O, /obj/structure/))
					rejected = TRUE
					break
			if(rejected)
				wlg_rejected++
				continue


			var/rn = rand(1, 100)
			switch(rn)
				if(1 to 49)
					wlg_selected_none++
					continue
				if(50 to 87)
					wlg_selected_grass++
					var/grass = pick(/obj/structure/flora/ausbushes/fullgrass,
									/obj/structure/flora/ausbushes/sparsegrass,
									/obj/structure/flora/ausbushes/pointybush,
									/obj/structure/flora/bush1,
									/obj/structure/flora/bush2,
									/obj/structure/flora/bush3,
									/obj/structure/flora/bush4)
					new grass(T)
				if(88 to 91)
					wlg_selected_rock++
					var/rock = pick(/obj/structure/flora/smallrock,
									/obj/structure/flora/bigrock)
					new rock(T)
				if(92)
					wlg_selected_cuttree++
					var/cuttree = pick(/obj/structure/flora/cuttedtree,
									/obj/structure/flora/cuttedtree)
					new cuttree(T)
				if(93)
					wlg_selected_pine++
					var/pine = pick(/obj/structure/flora/tree/summer,
									/obj/structure/flora/tree/summer/alt1,
									/obj/structure/flora/tree/summer/alt3,
									/obj/structure/flora/tree/summer/alt2)
					new pine(T)
				if(94)
					wlg_selected_deadtree++
					var/deadtree = pick(/obj/structure/flora/tree/summer/dead1,
									/obj/structure/flora/tree/summer/dead2,
									/obj/structure/flora/summer/log1,
									/obj/structure/flora/summer/log2)
					new deadtree(T)
				else
					wlg_selected_bush++
					var/bushes = /obj/structure/flora/ausbushes
					new bushes(T)
	return 1

/*
/hook/shuttle_move/proc/announce_mission_start()
	var/ru_fireteams = 0
	var/en_fireteams = 0
	for(var/datum/fireteam/ft in job_master.all_fireteams)
		if(!ft.is_full())
			continue
		if(ft.side == "WARPAC")
			ru_fireteams++
		if(ft.side == "NATO")
			en_fireteams++
	world << "<font size=3>Fireteams report: [en_fireteams] USMC full fireteams, [ru_fireteams] Soviet Army full otdeleniy."
	for(var/datum/fireteam/ft in job_master.all_fireteams)
		var/text = "[get_side_name(ft.side)] - [ft.code]"
		if(ft.name)
			text += " called as \"[ft.name]\"."
		world << "<font size=2>-[text]</font>"
	return 1

/proc/get_side_name(var/side)
	if(side == "WARPAC")
		return "Soviet Army"
	if(side == "NATO")
		return "USMC"
	return null
	*/