// IN THIS DOCUMENT :  Semi-automatic pistols

/obj/item/gun/ballistic/automatic/pistol
	slowdown = 0.1
	name = "pistol template"
	desc = "should not be here. Bugreport."
	icon = 'icons/fallout/objects/guns/ballistic.dmi'
	lefthand_file = 'icons/fallout/onmob/weapons/guns_lefthand.dmi'
	righthand_file = 'icons/fallout/onmob/weapons/guns_righthand.dmi'
	item_state = "gun"
	w_class = WEIGHT_CLASS_NORMAL //How much space it takes in a bag
	weapon_weight = WEAPON_LIGHT //Nakes dual wield possible
	slot_flags = ITEM_SLOT_BELT
	force = 12 //Pistol whip
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv/simple
	spread = 3
	burst_size = 1
	fire_delay = 4
	select = FALSE
	automatic_burst_overlay = FALSE
	semi_auto = TRUE
	can_suppress = TRUE
	equipsound = 'sound/f13weapons/equipsounds/pistolequip.ogg'

/obj/item/gun/ballistic/automatic/pistol/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/update_icon_state()
	icon_state = "[initial(icon_state)][chambered ? "" : "-e"]"

/obj/item/gun/ballistic/automatic/pistol/suppressed/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)



///////////
//PISTOLS//
///////////


//.22 Sport			Keywords: .22, Semi-auto, Suppressed
/obj/item/gun/ballistic/automatic/pistol/pistol22
	name = ".22 pistol"
	desc = "The silenced .22 pistol is a sporting handgun with an integrated silencer."
	icon_state = "silenced22"
	mag_type = /obj/item/ammo_box/magazine/m22
	can_attachments = TRUE
	can_suppress = FALSE
	can_unsuppress = FALSE
	suppressed = 1
	fire_sound = 'sound/f13weapons/22pistol.ogg'


//N99  10mm			Keywords: 10mm, Semi-auto, 12/24 rounds
/obj/item/gun/ballistic/automatic/pistol/n99
	name = "10mm pistol"
	desc = "A pre-war large-framed, gas-operated advanced 10mm pistol."
	icon_state = "n99"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv/simple
	can_attachments = TRUE
	can_automatic = TRUE
	suppressor_state = "n99_suppressor"
	suppressor_x_offset = 29
	suppressor_y_offset = 15
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'

//the Executive		Keywords: Unique, 10mm, Automatic, 12/24 rounds. Special modifiers: damage +4
/obj/item/gun/ballistic/automatic/pistol/n99/executive
	name = "the Executive"
	desc = "A modified N99 pistol with an accurate two-round-burst and a blue Vault-Tec finish, a status symbol for some Overseers."
	icon_state = "executive"
	burst_size = 2
	extra_damage = 4
	semi_auto = FALSE
	can_automatic = FALSE


//Type 17			Keywords: 10mm, Semi-auto, 12/24 rounds. Special modifiers: damage +1
/obj/item/gun/ballistic/automatic/pistol/type17
	name = "Type 17"
	desc = "Chinese military sidearm at the time of the Great War. The ones around are old and worn, but somewhat popular due to the long barrel and rechambered in 10mm after the original ammo ran dry decades ago."
	icon_state = "chinapistol"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv/simple
	fire_delay = 5
	extra_damage = 1
	spread = 4
	can_suppress = FALSE
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'


//Browning Hi-power		Keywords: 9mm, Semi-auto, 10 rounds
/obj/item/gun/ballistic/automatic/pistol/ninemil
	name = "Browning Hi-power"
	desc = "A mass produced pre-war Browning Hi-power 9mm pistol."
	icon_state = "ninemil"
	mag_type = /obj/item/ammo_box/magazine/m9mm
	fire_delay = 4
	can_attachments = TRUE
	suppressor_state = "pistol_suppressor"
	suppressor_x_offset = 30
	suppressor_y_offset = 19
	fire_sound = 'sound/f13weapons/ninemil.ogg'

//Maria				Keywords: Unique, 9mm, Semi-auto, 10 rounds. Special modifiers: fire delay -1, damage +10, penetration +0.2
/obj/item/gun/ballistic/automatic/pistol/ninemil/maria
	name = "Maria"
	desc = "An ornately-decorated pre-war Browning Hi-power 9mm pistol with pearl grips and a polished nickel finish. The firing mechanism has been upgraded, so for anyone on the receiving end, it must seem like an eighteen-karat run of bad luck."
	icon_state = "maria"
	fire_delay = 2
	extra_damage = 10 //40 damage, 20 AP- hits like a 7.62 and fires faster
	extra_penetration = 0.2


//Sig Sauer P220	Keywords: 9mm, Semi-auto, 10 rounds
/obj/item/gun/ballistic/automatic/pistol/sig
	name = "Sig P220"
	desc = "The P220 Sig Sauer. A Swiss designed pistol that is compact and has a good rate of fire."
	icon_state = "sig"
	w_class = WEIGHT_CLASS_SMALL 
	mag_type = /obj/item/ammo_box/magazine/m9mm
	fire_delay = 3
	can_attachments = TRUE
	suppressor_state = "pistol_suppressor"
	suppressor_x_offset = 30
	suppressor_y_offset = 20
	fire_sound = 'sound/f13weapons/9mm.ogg'


//Beretta M9FS		Keywords: 9mm, Semi-auto, 15 rounds. Special modifiers: spread -1
/obj/item/gun/ballistic/automatic/pistol/beretta
	name = "Beretta M9FS"
	desc = "One of the more common 9mm pistols, the Beretta is popular due to its reliability, 15 round magazine and good looks."
	icon_state = "beretta"
	mag_type = /obj/item/ammo_box/magazine/m9mmds
	spread = 1
	can_attachments = TRUE
	can_suppress = "pistol_suppressor"
	suppressor_x_offset = 30
	suppressor_y_offset = 20
	fire_sound = 'sound/f13weapons/9mm.ogg'

//Beretta M93R		Keywords: 9mm, Automatic, 15 rounds
/obj/item/gun/ballistic/automatic/pistol/beretta/automatic
	name = "Beretta M93R"
	desc = "A rare select fire variant of the M93R."
	icon_state = "m93r"
	burst_size = 2
	burst_shot_delay = 2.5
	spread = 8
	actions_types = list(/datum/action/item_action/toggle_firemode)
	automatic_burst_overlay = TRUE
	can_attachments = FALSE
	semi_auto = FALSE


//M1911				Keywords: .45 ACP, Semi-auto, 8 rounds. Special modifiers: damage +1
/obj/item/gun/ballistic/automatic/pistol/m1911
	name = "M1911"
	desc = "A classic .45 handgun with a small magazine capacity."
	icon_state = "m1911"
	item_state = "pistolchrome"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/m45
	extra_damage = 1
	can_attachments = TRUE
	suppressor_state = "pistol_suppressor"
	suppressor_x_offset = 30
	suppressor_y_offset = 21
	fire_sound = 'sound/f13weapons/45revolver.ogg'

//M1911	Custom		Keywords: .45 ACP, Semi-auto, 8 rounds. Special modifiers: damage +1
/obj/item/gun/ballistic/automatic/pistol/m1911/custom
	name = "M1911 Custom"
	desc = "A well-maintained stainless-steel frame 1911, with genuine wooden grips."
	icon_state = "m1911_custom"
	fire_delay = 3

//M1911	compac		Keywords: .45 ACP, Semi-auto, Short barrel, 8 rounds. Special modifiers: damage +1
/obj/item/gun/ballistic/automatic/pistol/m1911/compact
	name = "M1911 compact"
	desc = "The compact version of the classic .45 handgun."
	icon_state = "c1911"
	w_class = WEIGHT_CLASS_SMALL
	extra_damage = -1
	spread = 5
	suppressor_x_offset = 29
	suppressor_y_offset = 21

/obj/item/gun/ballistic/automatic/pistol/m1911/no_mag
	spawnwithmagazine = FALSE


//Mk. 23			Keywords: .45 ACP, Semi-auto, Long barrel (lasersight), 12 rounds
/obj/item/gun/ballistic/automatic/pistol/mk23
	name = "Mk. 23"
	desc = "A very tactical pistol chambered in .45 ACP with a built in laser sight and attachment point for a seclite."
	icon_state = "mk23"
	mag_type = /obj/item/ammo_box/magazine/m45exp
	fire_delay = 3
	extra_damage = 2
	spread = 1
	can_flashlight = TRUE
	gunlight_state = "flight"
	flight_x_offset = 16
	flight_y_offset = 13
	suppressor_state = "pistol_suppressor"
	suppressor_x_offset = 28
	suppressor_y_offset = 20
	fire_sound = 'sound/f13weapons/45revolver.ogg'


//Desert Eagle		Keywords: .44 Magnum, Semi-auto, Long barrel, 8 rounds, Heavy. Special modifiers: bullet speed +300 and damage +1
/obj/item/gun/ballistic/automatic/pistol/deagle
	name = "Desert Eagle"
	desc = "A robust .44 magnum semi-automatic handgun."
	icon_state = "deagle"
	item_state = "deagle"
	mag_type = /obj/item/ammo_box/magazine/m44
	weapon_weight = WEAPON_MEDIUM 
	force = 15
	extra_damage = 3
	extra_speed = 300
	recoil = 0.1
	can_suppress = FALSE
	automatic_burst_overlay = FALSE
	fire_sound = 'sound/f13weapons/44mag.ogg'


//Automag			Keywords: .44 Magnum, Semi-auto, Long barrel, 7 rounds, Heavy. Special modifiers: bullet speed +300
/obj/item/gun/ballistic/automatic/pistol/automag
	name = "Automag"
	desc = "A long-barreled .44 magnum semi-automatic handgun."
	icon_state = "automag"
	item_state = "deagle"
//	mag_type = /obj/item/ammo_box/magazine/automag
	weapon_weight = WEAPON_MEDIUM 
	extra_damage = 2
	extra_speed = 300
	fire_delay = 3.5
	recoil = 0.1
	can_suppress = FALSE
	automatic_burst_overlay = FALSE
	fire_sound = 'sound/f13weapons/44mag.ogg'


//14mm Pistol		Keywords: 14mm, Semi-auto, 7 rounds, Heavy
/obj/item/gun/ballistic/automatic/pistol/pistol14
	name = "14mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun, powerful but a little inaccurate"
	icon_state = "pistol14"
	mag_type = /obj/item/ammo_box/magazine/m14mm
	force = 15
	fire_delay = 5
	recoil = 0.25
	can_suppress = FALSE
	fire_sound = 'sound/f13weapons/magnum_fire.ogg'

//14mm compact		Keywords: 14mm, Semi-auto, Short barrel, 7 rounds, Heavy
/obj/item/gun/ballistic/automatic/pistol/pistol14/compact
	name = "compact 14mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun, this one is a compact model for concealed carry."
	icon_state = "pistol14_compact"
	w_class = WEIGHT_CLASS_SMALL
	extra_damage = -2
	spread = 5

//Little Devil		Keywords: Unique, 14mm, Semi-auto, Short barrel, 7 Rounds, Heavy. Special modifiers: damage +4, penetration +0.05, spread -3
/obj/item/gun/ballistic/automatic/pistol/pistol14/lildevil
	name= "Little Devil 14mm pistol"
	desc = "A Swiss SIG-Sauer 14mm handgun, this one is a finely tuned custom firearm from the Gunrunners."
	icon_state = "lildev"
	w_class = WEIGHT_CLASS_SMALL
	extra_damage = 2
	extra_penetration = 0.05
	fire_delay = 4



/////////////////
//CODE SNIPPETS//
/////////////////
/*
Code for weird stick gun pickup
/obj/item/gun/ballistic/automatic/pistol/stickman/pickup(mob/living/user)
	. = ..()
	to_chat(user, "<span class='notice'>As you try to pick up [src], it slips out of your grip..</span>")
	if(prob(50))
		to_chat(user, "<span class='notice'>..and vanishes from your vision! Where the hell did it go?</span>")
		qdel(src)
		user.update_icons()
	else
		to_chat(user, "<span class='notice'>..and falls into view. Whew, that was a close one.</span>")
		user.dropItemToGround(src)

/obj/item/gun/ballistic/automatic/pistol/deagle/update_overlays()
	. = ..()
	if(magazine)
		. += "deagle_magazine"

Citadel modular pistol code
/obj/item/gun/ballistic/automatic/pistol/modular
	name = "modular pistol"
	desc = "A small, easily concealable 10mm handgun. Has a threaded barrel for suppressors."
	icon = 'modular_citadel/icons/obj/guns/cit_guns.dmi'
	icon_state = "cde"
	can_unsuppress = TRUE
	automatic_burst_overlay = FALSE
	obj_flags = UNIQUE_RENAME
	unique_reskin = list("Default" = "cde",
						"N-99" = "n99",
						"Stealth" = "stealthpistol",
						"HKVP-78" = "vp78",
						"Luger" = "p08b",
						"Mk.58" = "secguncomp",
						"PX4 Storm" = "px4"
						)

/obj/item/gun/ballistic/automatic/pistol/modular/update_icon_state()
	if(current_skin)
		icon_state = "[unique_reskin[current_skin]][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"
	else
		icon_state = "[initial(icon_state)][chambered ? "" : "-e"][suppressed ? "-suppressed" : ""]"

/obj/item/gun/ballistic/automatic/pistol/modular/update_overlays()
	. = ..()
	if(magazine && suppressed)
		. += "[unique_reskin[current_skin]]-magazine-sup"	//Yes, this means the default iconstate can't have a magazine overlay
	else if (magazine)
		. += "[unique_reskin[current_skin]]-magazine"
*/
