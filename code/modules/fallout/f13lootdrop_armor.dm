/*	------------------------------------------------
	----------------CLOTHES SPAWNERS----------------
	------------------------------------------------ */

/obj/effect/spawner/lootdrop/f13/armor
	name = "armor spawners - DO NOT USE THIS"
	icon_state = "armor_loot"

/obj/effect/spawner/lootdrop/f13/armor/clothes
	name = "pre-war clothes spawner"
	loot = list(
				/obj/effect/spawner/bundle/f13/worker,
				/obj/effect/spawner/bundle/f13/plaidskirt,
				/obj/item/clothing/under/blacktango,
				/obj/item/clothing/under/redeveninggown,
				/obj/item/clothing/under/janimaid,
				/obj/effect/spawner/bundle/f13/badass,
				/obj/effect/spawner/bundle/f13/puffer,
				/obj/effect/spawner/bundle/f13/that,
				/obj/effect/spawner/bundle/f13/benny,
				/obj/effect/spawner/bundle/f13/burgundysuit,
				/obj/effect/spawner/bundle/f13/scratch,
				/obj/effect/spawner/bundle/f13/hoodie,
				/obj/item/clothing/under/pants/camo,
				/obj/effect/spawner/bundle/f13/bartender_purple,
				/obj/effect/spawner/bundle/f13/plaidskirt/bluered,
				/obj/effect/spawner/bundle/f13/navysuit,
				/obj/effect/spawner/bundle/f13/femsuit,
	)

/obj/effect/spawner/lootdrop/f13/armor/costumes
	name = "pre-war costumes spawner"
	loot = list(
				/obj/effect/spawner/bundle/f13/soviet,
				/obj/effect/spawner/bundle/f13/geisha,
				/obj/item/clothing/under/blacktango,
				/obj/item/clothing/under/redeveninggown,
				/obj/effect/spawner/bundle/f13/mexican,
				/obj/item/clothing/under/sailor,
				/obj/effect/spawner/lootdrop/f13/schoolgirl,
				/obj/effect/spawner/bundle/f13/hats,
				/obj/effect/spawner/bundle/f13/jabroni,
				/obj/effect/spawner/bundle/f13/romeaboo,
				/obj/item/clothing/under/maid,
				/obj/effect/spawner/bundle/f13/vampire,
				/obj/item/clothing/under/kilt,
				/obj/effect/spawner/bundle/f13/pirate
	)

/*	------------------------------------------------
	----------------ARMOR SPAWNERS------------------
	------------------------------------------------ */

//Tier 1 armor spawner
//Most loadouts will start with something better, the only notable drops here are iconoclast (rad protect), sadist (arclight helmet, welding protection) and blastmaster (40 melee 90 bomb)
/obj/effect/spawner/lootdrop/f13/armor/tier1 //TIER 1 ARMOR
	name = "tier 1 armor"
	loot = list(
				/obj/item/clothing/suit/armor/f13/leather_jacket,
				/obj/item/clothing/suit/armor/f13/leatherarmor,
				/obj/effect/spawner/bundle/f13/armor/supafly,
				/obj/effect/spawner/bundle/f13/armor/sadist,
				/obj/effect/spawner/bundle/f13/armor/blastmaster,
				/obj/effect/spawner/bundle/f13/armor/yankee,
				/obj/effect/spawner/bundle/f13/armor/badlands,
				/obj/effect/spawner/bundle/f13/armor/psycho,
				/obj/item/clothing/suit/f13/duster,
				/obj/effect/spawner/bundle/f13/armor/combatduster,
				/obj/item/clothing/suit/armor/f13/raider/iconoclast,
				/obj/item/clothing/suit/armor/f13/plates,
	)

//Tier 2 armor
// Generally either: metal armors with heavy slowdown (~0.25) and CA-level protection, armor with good storage (combat leather jackets) or decent all-around armor (armor vests)
/obj/effect/spawner/lootdrop/f13/armor/tier2
	name = "tier 2 armor"
	loot = list(
				/obj/effect/spawner/bundle/f13/armor/knight = 0.5, //these 2 are the same armor, but have different helmets
				/obj/effect/spawner/bundle/f13/armor/metal = 0.5,
				/obj/effect/spawner/bundle/f13/armor/laserproofmetal,
				/obj/item/clothing/suit/armor/f13/leather_jacket/combat,
				/obj/item/clothing/suit/armor/f13/leather_jacket/combat/coat,
				/obj/item/clothing/suit/armor/vest,
				/obj/item/clothing/suit/armor/vest/alt,
				)

//TIER 3 ARMOR
// CA drops here, as well as some other armors in the CA neighborhood (SWAT, vault armor). also has bulletproof and sulphite armors, which have good bullet protect but fuck-all everything else (bulletproof) or high slowdown (sulphite)
/obj/effect/spawner/lootdrop/f13/armor/tier3
	name = "tier 3 armor"
	loot = list(
				/obj/effect/spawner/bundle/f13/armor/metal/reinforced,
				/obj/effect/spawner/bundle/f13/armor/swat,
				/obj/effect/spawner/bundle/f13/armor/combat = 0.5,
				/obj/effect/spawner/bundle/f13/armor/combat/dark = 0.5,
				/obj/effect/spawner/bundle/f13/armor/bulletproof,
				/obj/effect/spawner/bundle/f13/armor/sulphite,
				/obj/effect/spawner/bundle/f13/armor/vault,
				)

//Tier 4 armor
//RCA and riotpolice, which has better bullet/melee but worse laser

/obj/effect/spawner/lootdrop/f13/armor/tier4 //TIER 4 ARMOR
	name = "tier 4 armor"
	loot = list(
				/obj/effect/spawner/bundle/f13/armor/riot,
				/obj/effect/spawner/bundle/f13/armor/combat/mk2,
				/obj/effect/spawner/bundle/f13/armor/combat/mk2/dark
				)

//Tier 5 armor
//new/salvaged t45b, raider sPA, hotrod sPA

/obj/effect/spawner/lootdrop/f13/armor/tier5 //TIER 5 ARMOR
	name = "tier 5 armor"
	loot = list(
				/obj/effect/spawner/bundle/f13/armor/raiderpa,
				/obj/effect/spawner/bundle/f13/armor/hotrodpa = 0.5,
				/obj/effect/spawner/bundle/f13/armor/t45b_salvaged,
				/obj/effect/spawner/bundle/f13/armor/t45b
				)

//Tier 6 armor
//new t45d, new t51b

/obj/effect/spawner/lootdrop/f13/armor/tier6
	name = "tier 6 armor"
	loot = list(
				/obj/effect/spawner/bundle/f13/armor/t51b,
				/obj/effect/spawner/bundle/f13/armor/t45d
				)

//Random armors

/obj/effect/spawner/lootdrop/f13/armor/random
	name = "random armor loot"
	lootcount = 1
	loot = list(
			/obj/effect/spawner/lootdrop/f13/armor/tier1 = 50, //50%
			/obj/effect/spawner/lootdrop/f13/armor/tier2 = 30, //30%
			/obj/effect/spawner/lootdrop/f13/armor/tier3 = 20 //20%
			)

/obj/effect/spawner/lootdrop/f13/armor/random_high
	name = "high tier random armor loot"
	lootcount = 1
	loot = list(
			/obj/effect/spawner/lootdrop/f13/armor/tier3 = 45, //45%
			/obj/effect/spawner/lootdrop/f13/armor/tier4 = 45,
			/obj/effect/spawner/lootdrop/f13/armor/tier4 = 10 // 10%
			)
