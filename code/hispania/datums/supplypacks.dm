//ENGI
/datum/supply_packs/engineering/inducers
	name = "Inducers Crate"
	cost = 60
	contains = list(/obj/item/inducer/apc, /obj/item/inducer/apc)
	containername = "inducer crate"
	containertype = /obj/structure/closet/crate/secure/engineering
	access = ACCESS_ENGINE

//Med//

//Rolledbed//
/datum/supply_packs/medical/rolledbed
    name = "Rolled Bed Crate"
    contains = list(/obj/item/roller,
                    /obj/item/roller)
    cost = 15
    containername = "rolled bed crate"

//Surgical Quickclot//
/datum/supply_packs/medical/quickclotcrate
	name = "Surgical Quikclot Crate"
	contains = list(/obj/item/stack/medical/quickclot)
	cost = 120 //Expensive AF
	containername = "surgical quickclot crate"

//Sec///
/datum/supply_packs/security/spacesuit
    name = "Security Space Suit Crate"
    contains = list(/obj/item/clothing/suit/space/hardsuit/security,
                    /obj/item/clothing/suit/space/hardsuit/security,
                    /obj/item/clothing/mask/breath,
                    /obj/item/clothing/mask/breath)
    cost = 70
    containername = "security space suit crate"

//Emergency//
/datum/supply_packs/engineering/energy_shi
	name = "Emergency Shield Crate"
	cost = 120
	contains = list(/obj/machinery/shieldgen, /obj/machinery/shieldgen, /obj/machinery/shieldgen, /obj/machinery/shieldgen)
	containername = "emergency shield crate"
	containertype = /obj/structure/closet/crate/secure/engineering
	access = ACCESS_ENGINE

/datum/supply_packs/emergency/panic_control
	name = "Blackout Crate"
	contains = list(/obj/item/storage/fancy/flare_box/full,
					/obj/item/storage/fancy/flare_box/full
					)
	cost = 60
	containername = "blackout shutdown"

//Food//
/datum/supply_packs/organic/canned_foods
	name = "Canned Foods Crate"
	contains = list(/obj/item/reagent_containers/food/snacks/canned_food/beef,
					/obj/item/reagent_containers/food/snacks/canned_food/beans,
					/obj/item/reagent_containers/food/snacks/canned_food/tomato,
					/obj/item/reagent_containers/food/snacks/canned_food/spinach,
					/obj/item/reagent_containers/food/snacks/canned_food/caviar)
	cost = 20
	containername = "canned food crate"

/datum/supply_packs/organic/erp
	name = "ERP (Emergency Ration Packs)"
	contains = list(/obj/item/storage/bag/plasticbag/mre,
					/obj/item/storage/bag/plasticbag/mre,
					/obj/item/storage/bag/plasticbag/mre,
					/obj/item/storage/bag/plasticbag/mre,
					/obj/item/storage/bag/plasticbag/mre)
	cost = 200
	containername = "erp crate"

//Cloaker//
/datum/supply_packs/security/armory/cloaker
	name = "cloaker gear crate"
	contains = list(/obj/item/clothing/head/beret/centcom/officer,
					/obj/item/clothing/head/beret/centcom/officer,
					/obj/item/clothing/suit/armor/bulletproof,
					/obj/item/clothing/suit/armor/bulletproof,
					/obj/item/clothing/shoes/combat/swat,
					/obj/item/clothing/shoes/combat/swat,
					/obj/item/clothing/gloves/combat,
					/obj/item/clothing/gloves/combat,
					/obj/item/melee/classic_baton,
					/obj/item/melee/classic_baton,
					/obj/item/clothing/mask/gas/sechailer/cloaker,
					/obj/item/clothing/mask/gas/sechailer/cloaker,
					/obj/item/storage/belt/military/assault,
					/obj/item/storage/belt/military/assault)
	cost = 120
	containername = "assault armor crate"
	contraband = 1
