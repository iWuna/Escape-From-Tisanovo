/decl/emote/audible
	key = "burp"
	emote_message_3p = "USER burps."
	message_type = AUDIBLE_MESSAGE
	var/emote_sound

/decl/emote/audible/do_extra(var/atom/user)
	if(emote_sound)
		playsound(user.loc, emote_sound, 50, 0)

/decl/emote/audible/deathgasp_alien
	key = "deathgasp"
	emote_message_3p = "USER lets out a waning guttural screech, green blood bubbling from its maw."

/decl/emote/audible/whimper
	key ="whimper"
	emote_message_3p = "USER whimpers."

/decl/emote/audible/gasp
	key ="gasp"
	emote_message_3p = "USER gasps."
	conscious = 0

/decl/emote/audible/gasp/do_extra(var/mob/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return
		if(M.gender == MALE)
			emote_sound = "sound/vo/gasp_male[rand(1,7)].ogg"

		if(M.gender == FEMALE)
			emote_sound = "sound/vo/gasp_female[rand(1,7)].ogg"

		if(emote_sound)
			playsound(M, emote_sound, 15, 0, 1)

/decl/emote/audible/scretch
	key ="scretch"
	emote_message_3p = "USER scretches."

/decl/emote/audible/choke
	key ="choke"
	emote_message_3p = "USER chokes."
	conscious = 0

/decl/emote/audible/gnarl
	key ="gnarl"
	emote_message_3p = "USER gnarls and shows its teeth.."

/decl/emote/audible/chirp
	key ="chirp"
	emote_message_3p = "USER chirps!"
	emote_sound = 'sound/misc/nymphchirp.ogg'

/decl/emote/audible/alarm
	key = "alarm"
	emote_message_1p = "You sound an alarm."
	emote_message_3p = "USER sounds an alarm."

/decl/emote/audible/alert
	key = "alert"
	emote_message_1p = "You let out a distressed noise."
	emote_message_3p = "USER lets out a distressed noise."

/decl/emote/audible/notice
	key = "notice"
	emote_message_1p = "You play a loud tone."
	emote_message_3p = "USER plays a loud tone."

/decl/emote/audible/whistle
	key = "whistle"
	emote_message_1p = "You whistle."
	emote_message_3p = "USER whistles."
	emote_sound = "sound/vo/whistle.ogg"

/decl/emote/audible/boop
	key = "boop"
	emote_message_1p = "You boop."
	emote_message_3p = "USER boops."

/decl/emote/audible/sneeze
	key = "sneeze"
	emote_message_3p = "USER sneezes."

/decl/emote/audible/sniff
	key = "sniff"
	emote_message_3p = "USER sniffs."

/decl/emote/audible/snore
	key = "snore"
	emote_message_3p = "USER snores."
	conscious = 0

/decl/emote/audible/whimper
	key = "whimper"
	emote_message_3p = "USER whimpers."

/decl/emote/audible/yawn
	key = "yawn"
	emote_message_3p = "USER yawns."

/decl/emote/audible/clap
	key = "clap"
	emote_message_3p = "USER claps."

/decl/emote/audible/clap/do_extra(var/mob/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return
	else
		emote_sound = "sound/vo/clap[rand(1,2)].ogg"

	if(emote_sound)
		playsound(M, emote_sound, 70, 0, 1)


/decl/emote/audible/chuckle
	key = "chuckle"
	emote_message_3p = "USER chuckles."

/decl/emote/audible/cough
	key = "cough"
	emote_message_3p = "USER coughs!"
	conscious = 0

/decl/emote/audible/cough/do_extra(var/mob/M)
	if(M.stat)
		return

	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return

		if(M.gender == MALE)
			emote_sound = "sound/vo/cough[rand(1,4)].ogg"

		if(M.gender == FEMALE)
			emote_sound = "sound/vo/cough_f[rand(1,3)].ogg"

		if(emote_sound)
			playsound(M, emote_sound, 80, 0, 1)

/decl/emote/audible/cry
	key = "cry"
	emote_message_3p = "USER cries."

/decl/emote/audible/sigh
	key = "sigh"
	emote_message_3p = "USER sighs."

/decl/emote/audible/sigh/do_extra(var/mob/M)
	if(M.stat)
		return

	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return

		if(M.gender == MALE)
			emote_sound = "sound/vo/sigh_m.ogg"

		if(M.gender == FEMALE)
			emote_sound = "sound/vo/sigh_f.ogg"

		if(emote_sound)
			playsound(M, emote_sound, 60, 0, 1)

/decl/emote/audible/laugh
	key = "laugh"
	emote_message_3p = "USER laughs."

/decl/emote/audible/laugh/do_extra(var/mob/M)
	if(M.stat)
		return

	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return

		if(M.gender == MALE)
			if(prob(99))
				emote_sound = "sound/vo/laugh_m[rand(1,3)].ogg"
			else
				emote_sound = "sound/vo/tommy_hahahah.ogg"

		if(M.gender == FEMALE)
			emote_sound = "sound/vo/laugh_f[rand(1,3)].ogg"

		if(emote_sound)
			playsound(M, emote_sound, 80, 0, 2)


/decl/emote/audible/mumble
	key = "mumble"
	emote_message_3p = "USER mumbles!"

/decl/emote/audible/grumble
	key = "grumble"
	emote_message_3p = "USER grumbles!"

/decl/emote/audible/groan
	key = "groan"
	emote_message_3p = "USER groans!"

/decl/emote/audible/groan/do_extra(var/mob/M)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return

		if(M.gender == MALE)
			emote_sound = "sound/vo/mh1_ReactedInjuryIntense_[rand(1,7)].ogg"

		if(M.gender == FEMALE)
			emote_sound = "sound/vo/fh1_ReactedInjuryIntense_[rand(1,5)].ogg"

		if(emote_sound)
			playsound(M, emote_sound, 100, 0, 3)


/decl/emote/audible/moan
	key = "moan"
	emote_message_3p = "USER moans!"
	conscious = 0

/decl/emote/audible/giggle
	key = "giggle"
	emote_message_3p = "USER giggles."

/decl/emote/audible/scream
	key = "scream"
	emote_message_3p = "USER screams!"

/decl/emote/audible/scream/do_extra(var/mob/M)
	if(M.stat)
		return

	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(H.isMonkey()|| M.gender == NEUTER)
			return

		if(M.gender == MALE)
			if(prob(99))
				emote_sound = "sound/vo/m_scream[rand(1,5)].ogg"
			else
				emote_sound = "sound/vo/scream_wilhelm.ogg"

		if(M.gender == FEMALE)
			emote_sound = "sound/vo/f_scream[rand(1,5)].ogg"

		if(emote_sound)
			playsound(M, emote_sound, 100, 0, extrarange = 4)

/decl/emote/audible/grunt
	key = "grunt"
	emote_message_3p = "USER grunts."

/decl/emote/audible/clearthroat
	key = "clearthroat"

/decl/emote/audible/clearthroat/do_emote(var/mob/living/carbon/human/user)
	var/emotesound = null
	if(user.isMonkey())
		return

	else if(user.gender == MALE)
		emotesound = 'sound/voice/emotes/throatclear_male.ogg'

	else
		emotesound = 'sound/voice/emotes/throatclear_female.ogg'

	if(emotesound)
		playsound(user, emotesound, 50, 0, 1)

	user.custom_emote(2,"clears their throat.")
	user.handle_emote_CD()

/decl/emote/audible/hem
	key = "hem"

/decl/emote/audible/hem/do_emote(var/mob/living/carbon/human/user)
	var/emotesound = null
	if(user.isMonkey())
		return

	else if(user.gender == MALE)
		emotesound = 'sound/voice/emotes/hem_male.ogg'

	else
		emotesound = 'sound/voice/emotes/hem_female.ogg'

	if(emotesound)
		playsound(user, emotesound, 50, 0, 1)

	user.custom_emote(2,"hems.")
	user.handle_emote_CD()