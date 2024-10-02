///Premade Viruses
/datum/disease2/disease/cold
	infectionchance = 50
	speed = 1
	spreadtype = "Airborne"
	max_stage = 3


/datum/disease2/disease/cold/New()
	..()
	var/datum/disease2/effect/sneeze/E1 = new()
	E1.stage = 1
	effects += E1
	var/datum/disease2/effect/fridge/E2 = new()
	E2.stage = 2
	effects += E2
	var/datum/disease2/effect/shakey/E3 = new()
	E3.stage = 3
	effects += E3

/datum/disease2/disease/spider
	infectionchance = 60
	speed = 1
	spreadtype = "Contact"
	max_stage = 3
	affected_species = list(HUMAN_SPECIES,SPECIES_UNATHI,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_YEOSA,SPECIES_TRITONIAN,SPECIES_NABBER,SPECIES_MONKEY)

/datum/disease2/disease/spider/New()
	..()
	var/datum/disease2/effect/headache/E1 = new()
	E1.stage = 1
	effects += E1
	var/datum/disease2/effect/blind/E2 = new()
	E2.stage = 2
	effects += E2
	var/datum/disease2/effect/confusion/E3 = new()
	E3.stage = 3
	effects += E3


/mob/living/simple_animal/hostile/giant_spider
	var/datum/disease2/disease/spider/spider = new()

/mob/living/simple_animal/hostile/giant_spider/Destroy()
	. = ..()
	QDEL_NULL(spider)

/mob/living/simple_animal/hostile/giant_spider/apply_melee_effects(mob/living/carbon/human/M)
	. = ..()
	if(Adjacent(M))//if it's human who can be infected standing nearby
		if (prob(10))
			infect_virus2(M, spider, 1)


/datum/disease2/disease/livingmeat

	infectionchance = 70
	speed = 3
	spreadtype = "Contact"
	max_stage = 3
	affected_species = list(HUMAN_SPECIES,SPECIES_UNATHI,SPECIES_SKRELL,SPECIES_UNATHI,SPECIES_YEOSA,SPECIES_TRITONIAN,SPECIES_NABBER,SPECIES_MONKEY)

/mob/living/simple_animal/hostile/meatstation
	var/datum/disease2/disease/livingmeat/livingmeat = new()

/mob/living/simple_animal/hostile/meatstation/Destroy()
	. = ..()
	QDEL_NULL(livingmeat)

/mob/living/simple_animal/hostile/meatstation/apply_melee_effects(mob/living/carbon/human/M)
	. = ..()
	if(Adjacent(M))//if it's human who can be infected standing nearby
		if (prob(25))
			infect_virus2(M, livingmeat, 1)

/datum/disease2/disease/livingmeat/New()
	..()
	var/datum/disease2/effect/stomach/E1 = new()
	E1.stage = 1
	effects += E1
	var/datum/disease2/effect/hungry/E2 = new()
	E2.stage = 2
	effects += E2
	var/datum/disease2/effect/mutation/E3 = new()
	E3.stage = 3
	effects += E3
