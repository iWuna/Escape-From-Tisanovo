/proc/generate_asset_name(file)
	return "asset.[md5(fcopy_rsc(file))]"

/proc/icon2html(thing, target, icon_state, dir, frame = 1, moving = FALSE, realsize = FALSE, class = null)
	if (!thing)
		return

	var/key
	var/icon/I = thing
	if (!target)
		return
	if (target == world)
		target = GLOB.clients

	var/list/targets
	if (!islist(target))
		targets = list(target)
	else
		targets = target
		if (!targets.len)
			return
	if (!isicon(I))
		if (isfile(thing)) //special snowflake
			var/name = "[generate_asset_name(thing)].png"
			register_asset(name, thing)
			for (var/thing2 in targets)
				send_asset(thing2, key, FALSE)
			return "<img class='icon icon-misc [class]' src=\"[url_encode(name)]\">"
		var/atom/A = thing
		if (isnull(dir))
			dir = A.dir
		if (isnull(icon_state))
			icon_state = A.icon_state
		I = A.icon
		if (ishuman(thing)) // Shitty workaround for a BYOND issue.
			var/icon/temp = I
			I = icon()
			I.Insert(temp, dir = SOUTH)
			dir = SOUTH
	else
		if (isnull(dir))
			dir = SOUTH
		if (isnull(icon_state))
			icon_state = ""

	I = icon(I, icon_state, dir, frame, moving)

	key = "[generate_asset_name(I)].png"
	register_asset(key, I)
	for (var/thing2 in targets)
		send_asset(thing2, key, FALSE)

	if(realsize)
		return "<img class='icon icon-[icon_state] [class]' style='width:[I.Width()]px;height:[I.Height()]px;min-height:[I.Height()]px' src=\"[url_encode(key)]\">"


	return "<img class='icon icon-[icon_state] [class]' src=\"[url_encode(key)]\">"

/proc/emoji_parse(message)
	. = message
	var/static/list/emojis = icon_states(icon('icons/emoji.dmi'))
	var/parsed = ""
	var/pos = 1
	var/search = 0
	var/emoji = ""
	while(1)
		search = findtext(message, ":", pos)
		parsed += copytext(message, pos, search)
		if(search)
			pos = search
			search = findtext(message, ":", pos+1)
			if(search)
				emoji = lowertext(copytext(message, pos+1, search))
				if(emoji in emojis)
					parsed += icon2html('icons/emoji.dmi', world, emoji)
					pos = search + 1
				else
					parsed += copytext(message, pos, search)
					pos = search
				emoji = ""
				continue
			else
				parsed += copytext(message, pos, search)
		break
	return parsed