var/const/ENG               =(1<<0)
var/const/SEC               =(1<<1)
var/const/MED               =(1<<2)
var/const/SCI               =(1<<3)
var/const/CIV               =(1<<4)
var/const/COM               =(1<<5)
var/const/CRG               =(1<<6)
var/const/MSC               =(1<<7)
var/const/SRV               =(1<<8)
var/const/SUP               =(1<<9)
var/const/SPT               =(1<<10)
var/const/EXP               =(1<<11)
var/const/ESC               =(1<<12)
var/const/BDWFORCE			=(1<<0)
var/const/DDRFORCE			=(1<<0)
var/const/USMCFORCE			=(1<<0)
var/const/SOVFORCE			=(1<<0)
var/const/PMCFORCE			=(1<<0)

GLOBAL_LIST_EMPTY(assistant_occupations)

GLOBAL_LIST_EMPTY(command_positions)

GLOBAL_LIST_EMPTY(engineering_positions)

GLOBAL_LIST_EMPTY(medical_positions)

GLOBAL_LIST_EMPTY(science_positions)

GLOBAL_LIST_EMPTY(cargo_positions)

GLOBAL_LIST_EMPTY(civilian_positions)

GLOBAL_LIST_EMPTY(security_positions)

GLOBAL_LIST_INIT(nonhuman_positions, list("pAI"))

GLOBAL_LIST_EMPTY(service_positions)

GLOBAL_LIST_EMPTY(supply_positions)

GLOBAL_LIST_EMPTY(support_positions)

GLOBAL_LIST_EMPTY(exploration_positions)

var/list/escalation_positions = list(
)



/proc/guest_jobbans(var/job)
	return ((job in GLOB.command_positions) || (job in GLOB.nonhuman_positions) || (job in GLOB.security_positions))

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(J.title == job)
			titles = J.alt_titles

	return titles

