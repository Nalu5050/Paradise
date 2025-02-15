/datum/reagent/consumable/blackdeath_blood
	name = "Infected Blood"
	id = "infected_blood"
	description = "Blood whit a terrible disease"
	reagent_state = LIQUID
	color = "#f80000"

/datum/reagent/consumable/blackdeath_blood/on_mob_life(mob/living/carbon/human/M)
	if(volume > 2)
		M.ForceContractDisease(new /datum/disease/black_death())
	return ..()

//Reagent for the drake steak//
/datum/reagent/medicine/miracledrops
	name = "miracle drops"
	id = "miracledrops"
	description = "It's magic. We don't have to explain it."
	reagent_state = LIQUID
	color = "#C8A5DC" // rgb: 200, 165, 220
	process_flags = ORGANIC | SYNTHETIC
	can_synth = FALSE
	taste_description = "health"

/datum/reagent/medicine/miracledrops/on_mob_life(mob/living/carbon/M)
	M.setOxyLoss(-5, FALSE)
	M.adjustBruteLoss(-5, FALSE)
	M.adjustFireLoss(-5, FALSE)
	M.adjustToxLoss(-5, FALSE)
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		for(var/thing in H.internal_organs)
			var/obj/item/organ/internal/I = thing
			I.receive_damage(-5, FALSE)
		for(var/obj/item/organ/external/E in H.bodyparts)
			E.mend_fracture()
	..()
	return STATUS_UPDATE_ALL

//Misc
/datum/reagent/consumable/drink/drakeblood
	name = "Drake Blood"
	id = "drakeblood"
	description = "The raw essence of a Drake."
	color = "#E6502F"
	drink_icon = "drakeblood"
	drink_name = "Glass of drake blood"
	drink_desc = "The raw essence of a Drake RAAWR"
	taste_description = "fresh blood."

/datum/reagent/hate
	name = "Pure Hate"
	id = "hate"
	description = "I don't like sand. It's all coarse, and rough, and irritating. And it gets everywhere."
	reagent_state = LIQUID
	color = "#FF83A5"
	process_flags = ORGANIC | SYNTHETIC
	taste_description = "hate"

/datum/reagent/hate/on_mob_add(mob/living/L)
	..()
	if(L.a_intent != INTENT_HARM)
		L.a_intent_change(INTENT_HARM)
	L.can_change_intents = FALSE //Now you have no choice but to do harm

/datum/reagent/hate/on_mob_life(mob/living/M)
	if(prob(15))
		var/hate_phrase = pick("nasty", "horrible", "pretty bad", "really bad", "pretty angry with yourself")
		to_chat(M, "<span class='notice'>You feel [hate_phrase].</span>")
	return ..()
