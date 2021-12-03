/obj/effect/proc_holder/spell/morph/open_vent
	name = "Open Vents"
	desc = "Spit out acidic puke on nearby vents or scrubbers. Will take a little while for the acid to take effect. Not usable from inside a vent."
	action_icon_state = "acid_vent"
	charge_max = 10 SECONDS
	hunger_cost = 10

/obj/effect/proc_holder/spell/morph/open_vent/choose_targets(mob/user)
	var/list/targets = list()
	for(var/obj/machinery/atmospherics/unary/U in view(user, 1))
		if(istype(U, /obj/machinery/atmospherics/unary/vent_scrubber))
			var/obj/machinery/atmospherics/unary/vent_scrubber/S = U
			if(S.welded)
				targets += S
		else if(istype(U, /obj/machinery/atmospherics/unary/vent_pump))
			var/obj/machinery/atmospherics/unary/vent_scrubber/V = U
			if(V.welded)
				targets += V

	perform(targets, TRUE, user)

/obj/effect/proc_holder/spell/morph/open_vent/cast(list/targets, mob/user)
	if(!length(targets))
		to_chat(user, "<span class='warning'>No nearby welded vents found!</span>")
		revert_cast(user)
		return
	to_chat(user, "<span class='sinister'>You begin regurgitating up some acidic puke!</span>")
	if(!do_after(user, 2 SECONDS, FALSE, user))
		to_chat(user, "<span class='warning'>You swallow the acid again.</span>")
		revert_cast(user)
		return
	for(var/thing in targets)
		var/obj/machinery/atmospherics/unary/U = thing
		U.add_overlay(GLOB.acid_overlay, TRUE)
		addtimer(CALLBACK(src, .proc/unweld_vent, U), 2 SECONDS)
		playsound(U, 'sound/items/welder.ogg', 100, TRUE)

/obj/effect/proc_holder/spell/morph/open_vent/proc/unweld_vent(obj/machinery/atmospherics/unary/U)
	if(istype(U, /obj/machinery/atmospherics/unary/vent_scrubber))
		var/obj/machinery/atmospherics/unary/vent_scrubber/S = U
		S.welded = FALSE
	else if(istype(U, /obj/machinery/atmospherics/unary/vent_pump))
		var/obj/machinery/atmospherics/unary/vent_scrubber/V = U
		V.welded = FALSE
	U.update_icon()
	U.cut_overlay(GLOB.acid_overlay, TRUE)
