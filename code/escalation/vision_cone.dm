/////////////VISION CONE///////////////
//Vision cone code by Matt and Honkertron, which was made specifically for Otuska. This vision cone code allows for mobs and/or items to blocked out from a players field of vision.
//This code makes use of the "cone of effect" proc created by Lummox, contributed by Jtgibson. More info on that here:
//http://www.byond.com/forum/?post=195138
///////////////////////////////////////


//Defines.
#define OPPOSITE_DIR(D) turn(D, 180)

#define CENTERED_RENDER_SOURCE(img, atom, FoV) \
	atom.render_target = atom.render_target || ref(atom);\
	img.render_source = atom.render_target;\
	if(atom.icon){\
		var/_cached_sizes = FoV.width_n_height_offsets[atom.icon];\
		if(!_cached_sizes){\
			var/icon/_I = icon(atom.icon);\
			var/list/L = list();\
			L += (_I.Width() - world.icon_size)/2;\
			L += (_I.Height() - world.icon_size)/2;\
			_cached_sizes = FoV.width_n_height_offsets[atom.icon] = L\
		}\
		img.pixel_x = _cached_sizes[1];\
		img.pixel_y = _cached_sizes[2];\
		img.loc = atom\
	}

#define REGISTER_NESTED_LOCS(source, list, comsig, proc) \
	for(var/k in get_nested_locs(source)){\
		var/atom/_A = k;\
		RegisterSignal(_A, comsig, proc);\
		list += _A\
	}

#define UNREGISTER_NESTED_LOCS(list, comsig, index) \
	for(var/k in index to length(list)){\
		var/atom/_A = list[k];\
		UnregisterSignal(_A, comsig);\
		list -= _A\
	}


/// Field of vision defines.
#define FOV_90_DEGREES	90
#define FOV_180_DEGREES	180
#define FOV_270_DEGREES	270

//viewers() but with a signal, for blacklisting.
/proc/get_actual_viewers(depth = world.view, atom/center)
	if(!center)
		return
	. = viewers(depth, center)
	for(var/k in .)
		var/mob/M = k
		SEND_SIGNAL(M, COMSIG_MOB_IS_VIEWER, center, depth, .)

//Returns a list of all locations the target is within.
/proc/get_nested_locs(atom/movable/M, include_turf = FALSE)
	. = list()
	var/atom/A = M.loc
	while(A && !isturf(A))
		. += A
		A = A.loc
	if(A && include_turf) //At this point, only the turf is left.
		. += A


client/
	var/list/hidden_atoms = list()
	var/list/hidden_mobs = list()

/**
  * That special invisible, almost neigh indestructible movable
  * that holds both shadow cone mask and image and follows the player around.
  */
	var/atom/movable/fov_holder/fov
	///The current screen size this field of vision is meant to fit for.
	var/current_fov_size = list(15, 15)
	///How much is the cone rotated clockwise, purely backend. Please use rotate_shadow_cone() if you must.
	var/angle = 0
	/// Used to scale the shadow cone when rotating it to fit over the edges of the screen.
	var/rot_scale = 1
	/// The inner angle of this cone, right hardset to 90, 180, or 270 degrees, until someone figures out a way to make it dynamic.
	var/shadow_angle = FOV_90_DEGREES
	/// The mask portion of the cone, placed on a * render target plane so while not visible it still applies the filter.
	var/image/shadow_mask
	/// The visual portion of the cone, placed on the highest layer of the wall plane
	var/image/visual_shadow
/**
  * An image whose render_source is kept up to date to prevent the mob (or the topmost movable holding it) from being hidden by the mask.
  * Will make it use vis_contents instead once a few byonds bugs with images and vis contents are fixed.
  */
	var/image/owner_mask
/**
  * A circle image used to somewhat uncover the adjacent portion of the shadow cone, making mobs and objects behind us somewhat visible.
  * The owner mask is still required for those mob going over the default 32x32 px size btw.
  */
	var/image/adj_mask
	/// A list of nested locations the mob is in, to ensure the above image works correctly.
	var/list/nested_locs = list()
/**
  * A static list of offsets based on icon width and height, because render sources are centered unlike most other visuals,
  * and that gives us some problems when the icon is larger or smaller than world.icon_size
  */
	var/static/list/width_n_height_offsets = list()



atom/proc/InCone(atom/center = usr, dir = NORTH)
	if(get_dist(center, src) == 0 || src == center) return 0
	var/d = get_dir(center, src)

	if(!d || d == dir) return 1
	if(dir & (dir-1))
		return (d & ~dir) ? 0 : 1
	if(!(d & dir)) return 0
	var/dx = abs(x - center.x)
	var/dy = abs(y - center.y)
	if(dx == dy) return 1
	if(dy > dx)
		return (dir & (NORTH|SOUTH)) ? 1 : 0
	return (dir & (EAST|WEST)) ? 1 : 0

mob/dead/InCone(mob/center = usr, dir = NORTH)
	return

mob/living/InCone(mob/center = usr, dir = NORTH)
	. = ..()
	for(var/obj/item/grab/G in center)//TG doesn't have the grab item. But if you're porting it and you do then uncomment this.
		if(src == G.affecting)
			return 0
		else
			return .


proc/cone(atom/center = usr, dir = NORTH, list/list = oview(center))
	for(var/mob/living/A in list)
		if(!A.InCone(center, dir))
			list -= A
	return list

mob/proc/update_vision_cone()
	return

/mob/living/proc/clear_cone_effect(var/image/I)
	if(I)
		qdel(I)

mob/living/carbon/human/update_vision_cone()
	var/delay = 10
	if(src.client)
		var/image/I = null
		for(I in src.client.hidden_atoms)
			I.override = 0
			addtimer(CALLBACK(src, .proc/clear_cone_effect, I), delay)
			delay += 10
		check_fov()
		src.client.hidden_atoms = list()
		src.client.hidden_mobs = list()
		src.fov.dir = src.dir
		if(fov.alpha != 0)
			var/mob/living/M
			for(M in cone(src, OPPOSITE_DIR(src.dir), view(10, src)))
				I = image("split", M)
				I.override = 1
				src.client.images += I
				src.client.hidden_atoms += I
				src.client.hidden_mobs += M
				if(src.pulling == M)//If we're pulling them we don't want them to be invisible, too hard to play like that.
					I.override = 0

//				else if(M.footstep >= 1)
				M.in_vision_cones[src.client] = 1

			//Optional items can be made invisible too. Uncomment this part if you wish to items to be invisible.
			//var/obj/item/O
			//for(O in cone(src, OPPOSITE_DIR(src.dir), oview(src)))
			//	I = image("split", O)
			//	I.override = 1
			//	src.client.images += I
			//	src.client.hidden_atoms += I

	else
		return

mob/living/carbon/human/proc/SetFov(var/n)
	if(!n)
		hide_cone()
	else
		show_cone()

mob/living/carbon/human/proc/check_fov()

	if(resting || lying || client.eye != client.mob)
		src.fov.alpha = 0
		return

	else if(src.usefov)
		show_cone()

	else
		hide_cone()

//Making these generic procs so you can call them anywhere.
mob/living/carbon/human/proc/show_cone()
	if(src.fov)
		src.fov.alpha = 255
		src.usefov = 1

mob/living/carbon/human/proc/hide_cone()
	if(src.fov)
		src.fov.alpha = 0
		src.usefov = 0