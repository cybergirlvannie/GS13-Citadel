/obj/machinery/door/poddoor/shutters
	gender = PLURAL
	name = "shutters"
	desc = "Mechanical metal shutters operated by a button with a magnetic seal, keeping them airtight."
	icon = 'GainStation13/icons/obj/doors/shutters.dmi' //GS13
	layer = SHUTTER_LAYER
	closingLayer = SHUTTER_LAYER
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 75, BOMB = 25, BIO = 100, RAD = 100, FIRE = 100, ACID = 70)
	damage_deflection = 20
	max_integrity = 100

/obj/machinery/door/poddoor/shutters/preopen
	icon_state = "open"
	density = FALSE
	opacity = 0

// The below shutters are the original ones from the TG codebase. They are remaining as "secure" shutters. If anyone wants to improve their animation, feel free.
// The original shutters are now shutters_old.dmi; copy the naming format of the files into new a new .dmi to add new shutters that work with the poddoor code for animating the doors.
// Originally, the shutters were reskins of blast doors. Eighty hits with the Cap's sabre to destroy one shutter is far too powerful considering shutters cannot be deconstructed (yet).
// If you're a mapper and want super strong shutter, use the 'old' ones.

/obj/machinery/door/poddoor/shutters/old
	name = "strong shutters"
	desc = "These shutters have an armoured frame; it looks like plasteel. These shutters look robust enough to survive explosions."
	icon = 'GainStation13/icons/obj/doors/shutters_old.dmi' //GS13
	icon_state = "closed"
	armor = list(MELEE = 30, BULLET = 30, LASER = 30, ENERGY = 75, BOMB = 30, BIO = 100, RAD = 100, FIRE = 100, ACID = 70)
	max_integrity = 300

/obj/machinery/door/poddoor/shutters/old/preopen
	icon_state = "open"
	density = FALSE
	opacity = 0

// End of old shutter stuff. Credit for the old shutter sprites to TG.

/obj/machinery/door/poddoor/shutters/radiation
	name = "radiation shutters"
	desc = "Lead-lined shutters painted yellow with a radioactive hazard symbol on it. Blocks out most radiation"
	icon = 'GainStation13/icons/obj/doors/shutters_radiation.dmi' //GS13
	icon_state = "closed"
	rad_insulation = 0.2

/obj/machinery/door/poddoor/shutters/radiation/preopen
	icon_state = "open"
	density = FALSE
	opacity = 0
	rad_insulation = 1

/obj/machinery/door/poddoor/shutters/radiation/do_animate(animation)
	..()
	switch(animation)
		if("opening")
			rad_insulation = 1
		if("closing")
			rad_insulation = -0.5

// A 3x3 N2 SM setup won't irradiate you if you're behind the shutter at -0.9 insulation. If it starts to delam, it'll start irradiating you slowly. Keep the value between -0.1 to -0.9

/obj/machinery/door/poddoor/shutters/window
	name = "windowed shutters"
	desc = "Mechanical shutters that have some form of plastic window in them, allowing you to see through the shutters at all times."
	icon = 'GainStation13/icons/obj/doors/shutters_window.dmi' //GS13
	icon_state = "closed"
	opacity = 0
	glass = 1

/obj/machinery/door/poddoor/shutters/window/preopen
	icon_state = "open"
	density = FALSE
