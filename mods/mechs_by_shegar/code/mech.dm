/mob/living/exosuit
	var/obj/item/device/gps/GPS
	var/obj/item/device/scanner/health/medscan
	var/list/menu_hud_elements = list()
	var/menu_status = FALSE
	// Passenger places
	// В связи с кор механом, пассажиры будут помещены в отдельный обьект, для того чтобы пассажиры не курили воздух внутри меха!
	var/obj/item/mech_component/passenger_compartment/passenger_compartment = null
	var/list/passenger_places = list(
		"Back",
		"Left back",
		"Right back"
	)
	/// Общее число пассажиров
	var/passengers_ammount = 0
	/// На спине есть пассажир?
	var/have_back_passenger = FALSE
	/// На левом боку есть пассажир?
	var/have_left_passenger = FALSE
	/// На правом боку есть пассажир?
	var/have_right_passenger = FALSE

	var/list/back_passengers_overlays // <- Изображение пассажира на спине
	var/list/left_back_passengers_overlays // <- Изображение пассажира на левом боку
	var/list/right_back_passengers_overlays // <- Изображение пассажира на правом боку
	///Костыль, предотвращает двойной таран
	var/Bumps = 0
	///Хранит в себе время последнего столкновения
	var/last_collision
	///Список с изображениями всех частей меха. Применяется в ремонте.
	var/list/parts_list
	var/list/parts_list_images
	///Содержит в себе данные привязанной id карты. По умолчанию - пусто
	var/list/id_holder
	///Мех никогда не должен свапаться
	mob_never_swap = TRUE
	///Максимальное возможное количество тепла в мехе
	var/max_heat = 1000
	//Минимальное возможное количество тепла в мехе
	var/min_heat = 0
	///Текущее количество тепла в мехе
	var/current_heat = 0
	///Мех находится в статусе перегрева?
	var/overheat = FALSE
	///Требуется обработка тепла?
	var/process_heat = FALSE
	///Когда в последний раз обрабатывали тепло
	var/last_heat_process = 0
	///Сумарная скорость утилизации тепла в мехе
	var/total_heat_cooling = 0
	///Тепло, создающееся при перегреве при перегреве
	var/overheat_heat_generation = 0
	///Модификатор начисления тепла
	var/overheat_heat_modificator = 1

/mob/living/exosuit/Initialize(mapload, obj/structure/heavy_vehicle_frame/source_frame)
	.=..()
	passenger_compartment = new(src)
	maxHealth = (body.current_hp + material.integrity) + head.current_hp + arms.current_hp + legs.current_hp
	max_heat = body.max_heat + head.max_heat + arms.max_heat + legs.max_heat
	health = maxHealth
	GPS = new(src)
	medscan = new(src)
	generate_icons()
	total_heat_cooling = head.heat_cooling + body.heat_cooling + arms.heat_cooling + legs.heat_cooling
	overheat_heat_generation = ((head.emp_heat_generation/2) + (arms.emp_heat_generation/2) + (body.emp_heat_generation/2) + (legs.emp_heat_generation/2))


/mob/living/exosuit/proc/refresh_menu_hud()
	if(LAZYLEN(pilots))
		for(var/thing in pilots)
			var/mob/pilot = thing
			if(pilot.client)
				if(menu_status == TRUE)
					pilot.client.screen |= menu_hud_elements //Врубаем меню худ
				else
					pilot.client.screen -= menu_hud_elements //Вырубаем меню худ



/mob/living/exosuit/dismantle()
	forced_leave_passenger(0 , MECH_DROP_ALL_PASSENGER , "dismantle of [src]") // Перед разбором, сбросим всех пассажиров
	.=..()

/mob/living/exosuit/Destroy()
	forced_leave_passenger(0 , MECH_DROP_ALL_PASSENGER , "dismantle of [src]") // Перед смертью меха, сбросим всех пассажиров
	. = ..()


///Функция генерирующая изображение модулей меха. Применяется в радиальном меню при ремонте
/mob/living/exosuit/proc/generate_icons()
	LAZYCLEARLIST(parts_list)
	LAZYCLEARLIST(parts_list_images)
	parts_list = list(head, body, arms, legs)
	parts_list_images = make_item_radial_menu_choices(parts_list)

/mob/living/exosuit/can_swap_with(mob/living/tmob)
	return 0
