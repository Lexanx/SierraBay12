/turf/simulated/floor/cult/runed
	name = "runed floor"
	icon_state = "line"
	icon = 'mods/cult/icons/runed.dmi'

/turf/simulated/floor/cult/runed/l
	name = "runed floor"
	icon_state = "linel"

/turf/simulated/floor/cult/runed/r
	name = "runed floor"
	icon_state = "liner"


/turf/simulated/floor/cult/runed/center
	name = "runed floor"
	icon_state = "center_4"



/turf/simulated/floor/cult/runed/anim
	icon = 'mods/cult/icons/runed_anim.dmi'
	name = "runed floor"
	icon_state = "line"
	light_range = 4
	light_power = 4
	light_color = COLOR_RED



/obj/structure/cult/
	name = "pedestal"
	desc = "A monolith of unknown stone with unreadable runes."
	icon = 'mods/cult/icons/cult.dmi'
	icon_state = "pedestal"

/obj/structure/cult/pedestal/
	name = "pedestal"
	desc = "A monolith of unknown stone with unreadable runes."
	icon = 'mods/cult/icons/cult.dmi'
	icon_state = "pedestal"


/obj/structure/cult/forge
	name = "Daemon forge"
	desc = "A forge used in crafting the unholy weapons used by the armies of Nar-Sie."
	icon_state = "forge_inactive"
	light_color = "#cc9338"
	light_power = 2
	light_range = 3

/obj/structure/cult/statue/gargoyle
	name = "statue of gargoyle"
	icon_state = "gargoyle"


/obj/structure/cult/statue/shell
	name = "cursed statue"
	icon_state = "shell"


/obj/structure/cult/altar
	name = "Altar of the Nar-Sie"
	desc = "Altar of the Nar-Sie, used for the sacrifice for the only one true god."
	icon_state = "cultaltar"


/obj/structure/cult/altar/proc/start_rite()
	icon_state = "cultaltar-blood"

/obj/structure/cult/altar/proc/reset_rite()
	icon_state = initial(icon_state)
