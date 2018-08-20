
// nightvision goggles

/obj/item/clothing/glasses/night
	name = "night vision goggles"
	desc = "You can totally see in the dark now!"
	icon_state = "night"
	item_state = "glasses"
	origin_tech = "magnets=2"
	darkness_view = 7
	fullscreen_vision = /obj/screen/fullscreen/nvg


/obj/item/clothing/glasses/night/M4RA
	name = "M4RA Battle sight"
	desc = "A headset and night vision goggles system for the M4RA Battle Rifle. Allows highlighted imaging of surroundings. Click it to toggle."
	icon = 'icons/obj/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	vision_flags = SEE_TURFS
	darkness_view = 12
	toggleable = 1
	fullscreen_vision = null
	actions_types = list(/datum/action/item_action/toggle)


/obj/item/clothing/glasses/night/m42_night_goggles
	name = "M42 scout sight"
	desc = "A headset and night vision goggles system for the M42 Scout Rifle. Allows highlighted imaging of surroundings. Click it to toggle."
	icon = 'icons/obj/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	vision_flags = SEE_TURFS
	darkness_view = 12
	toggleable = 1
	fullscreen_vision = null
	actions_types = list(/datum/action/item_action/toggle)


/obj/item/clothing/glasses/night/m42_night_goggles/upp
	name = "Type 9 commando goggles"
	desc = "A headset and night vision goggles system used by UPP forces. Allows highlighted imaging of surroundings. Click it to toggle."
	icon_state = "upp_goggles"
	deactive_state = "upp_goggles_0"


/obj/item/clothing/glasses/night/m56_goggles
	name = "M56 head mounted sight"
	desc = "A headset and goggles system for the M56 Smartgun. Has a low-res short range imager, allowing for view of terrain."
	icon = 'icons/obj/clothing/glasses.dmi'
	icon_state = "m56_goggles"
	deactive_state = "m56_goggles_0"
	darkness_view = 5
	toggleable = 1
	actions_types = list(/datum/action/item_action/toggle)
	vision_flags = SEE_TURFS
	fullscreen_vision = /obj/screen/fullscreen/thermal

/obj/item/clothing/glasses/night/m56_goggles/mob_can_equip(mob/user, slot)
	if(slot == WEAR_EYES)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			if(!istype(H.back, /obj/item/smartgun_powerpack))
				user << "You must be wearing an M56 Powerpack on your back to wear these."
				return 0
	return ..()



/obj/item/clothing/glasses/night/yautja
	name = "bio-mask nightvision"
	desc = "A vision overlay generated by the Bio-Mask. Used for low-light conditions."
	icon = 'icons/obj/items/predator.dmi'
	icon_state = "visor_nvg"
	darkness_view = 5 //Not quite as good as regular NVG.
	flags_inventory = COVEREYES
	flags_item = NODROP|DELONDROP
	fullscreen_vision = null


/obj/item/clothing/glasses/night/yautja/Dispose()
	..()
	return TA_REVIVE_ME

/obj/item/clothing/glasses/night/yautja/Recycle()
	var/blacklist[] = list("overlay","icon_state","item_state","name","desc","darkness_view","can_remove")
	. = ..() + blacklist

