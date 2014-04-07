/*

	Hello and welcome to sprite_accessories: For sprite accessories, such as hair,
	facial hair, and possibly tattoos and stuff somewhere along the line. This file is
	intended to be friendly for people with little to no actual coding experience.
	The process of adding in new hairstyles has been made pain-free and easy to do.
	Enjoy! - Doohl


	Notice: This all gets automatically compiled in a list in dna.dm, so you do not
	have to define any UI values for sprite accessories manually for hair and facial
	hair. Just add in new hair types and the game will naturally adapt.

	!!WARNING!!: changing existing hair information can be VERY hazardous to savefiles,
	to the point where you may completely corrupt a server's savefiles. Please refrain
	from doing this unless you absolutely know what you are doing, and have defined a
	conversion in savefile.dm
*/
/proc/init_sprite_accessory_subtypes(prototype, list/L, list/male, list/female)
	if(!istype(L))		L = list()
	if(!istype(male))	male = list()
	if(!istype(female))	female = list()

	for(var/path in typesof(prototype))
		if(path == prototype)	continue
		var/datum/sprite_accessory/D = new path()

		if(D.icon_state)	L[D.name] = D
		else				L += D.name

		switch(D.gender)
			if(MALE)	male += D.name
			if(FEMALE)	female += D.name
			else
				male += D.name
				female += D.name
	return L

/datum/sprite_accessory
	var/icon			//the icon file the accessory is located in
	var/icon_state		//the icon_state of the accessory
	var/name			//the preview name of the accessory
	var/gender = NEUTER	//Determines if the accessory will be skipped or included in random hair generations

//////////////////////
// Hair Definitions //
//////////////////////
/datum/sprite_accessory/hair
	icon = 'icons/mob/human_face.dmi'	  // default icon for all hairs

	short
		name = "Short Hair"	  // try to capatilize the names please~
		icon_state = "hair_a" // you do not need to define _s or _l sub-states, game automatically does this for you

	cut
		name = "Cut Hair"
		icon_state = "hair_c"

	long
		name = "Shoulder-length Hair"
		icon_state = "hair_b"

	longer
		name = "Long Hair"
		icon_state = "hair_vlong"

	longest
		name = "Very Long Hair"
		icon_state = "hair_longest"

	longfringe
		name = "Long Fringe"
		icon_state = "hair_longfringe"

	longestalt
		name = "Longer Fringe"
		icon_state = "hair_vlongfringe"

	halfbang
		name = "Half-banged Hair"
		icon_state = "hair_halfbang"

	halfbangalt
		name = "Half-banged Hair Alt"
		icon_state = "hair_halfbang_alt"

	ponytail1
		name = "Ponytail 1"
		icon_state = "hair_ponytail"

	ponytail2
		name = "Ponytail 2"
		icon_state = "hair_pa"

	ponytail3
		name = "Ponytail 3"
		icon_state = "hair_ponytail3"

	parted
		name = "Parted"
		icon_state = "hair_parted"

	pompadour
		name = "Pompadour"
		icon_state = "hair_pompadour"
		gender = MALE

	quiff
		name = "Quiff"
		icon_state = "hair_quiff"
		gender = MALE

	bedhead
		name = "Bedhead"
		icon_state = "hair_bedhead"

	bedhead2
		name = "Bedhead 2"
		icon_state = "hair_bedheadv2"

	bedhead3
		name = "Bedhead 3"
		icon_state = "hair_bedheadv3"

	beehive
		name = "Beehive"
		icon_state = "hair_beehive"
		gender = FEMALE

	bobcurl
		name = "Bobcurl"
		icon_state = "hair_bobcurl"
		gender = FEMALE

	bob
		name = "Bob"
		icon_state = "hair_bobcut"
		gender = FEMALE

	bowl
		name = "Bowl"
		icon_state = "hair_bowlcut"
		gender = MALE

	buzz
		name = "Buzzcut"
		icon_state = "hair_buzzcut"
		gender = MALE

	crew
		name = "Crewcut"
		icon_state = "hair_crewcut"
		gender = MALE

	combover
		name = "Combover"
		icon_state = "hair_combover"
		gender = MALE

	devillock
		name = "Devil Lock"
		icon_state = "hair_devilock"

	dreadlocks
		name = "Dreadlocks"
		icon_state = "hair_dreads"
		gender = MALE // okay.jpg

	curls
		name = "Curls"
		icon_state = "hair_curls"

	afro
		name = "Afro"
		icon_state = "hair_afro"

	afro2
		name = "Afro 2"
		icon_state = "hair_afro2"

	afro_large
		name = "Big Afro"
		icon_state = "hair_bigafro"
		gender = MALE

	sargeant
		name = "Flat Top"
		icon_state = "hair_sargeant"
		gender = MALE

	emo
		name = "Emo"
		icon_state = "hair_emo"

	fag
		name = "Flow Hair"
		icon_state = "hair_f"

	feather
		name = "Feather"
		icon_state = "hair_feather"

	hitop
		name = "Hitop"
		icon_state = "hair_hitop"
		gender = MALE

	mohawk
		name = "Mohawk"
		icon_state = "hair_d"
		gender = MALE // gross

	jensen
		name = "Adam Jensen Hair"
		icon_state = "hair_jensen"
		gender = MALE

	gelled
		name = "Gelled Back"
		icon_state = "hair_gelled"
		gender = FEMALE

	spiky
		name = "Spiky"
		icon_state = "hair_spikey"
		gender = MALE

	kusangi
		name = "Kusanagi Hair"
		icon_state = "hair_kusanagi"

	kagami
		name = "Pigtails"
		icon_state = "hair_kagami"
		gender = FEMALE

	himecut
		name = "Hime Cut"
		icon_state = "hair_himecut"
		gender = FEMALE

	braid
		name = "Floorlength Braid"
		icon_state = "hair_braid"
		gender = FEMALE

	odango
		name = "Odango"
		icon_state = "hair_odango"
		gender = FEMALE

	ombre
		name = "Ombre"
		icon_state = "hair_ombre"
		gender = FEMALE

	updo
		name = "Updo"
		icon_state = "hair_updo"
		gender = FEMALE

	skinhead
		name = "Skinhead"
		icon_state = "hair_skinhead"

	longbangs
		name = "Long Bangs"
		icon_state = "hair_lbangs"
		gender = FEMALE

	balding
		name = "Balding Hair"
		icon_state = "hair_e"
		gender = MALE // turnoff!

	bald
		name = "Bald"
		icon_state = null
		gender = MALE

	parted
		name = "Side Part"
		icon_state = "hair_part"

/////////////////////////////
// Facial Hair Definitions //
/////////////////////////////
/datum/sprite_accessory/facial_hair
	icon = 'icons/mob/human_face.dmi'
	gender = MALE // barf (unless you're a dorf, dorfs dig chix w/ beards :P)

	shaved
		name = "Shaved"
		icon_state = null
		gender = NEUTER

	watson
		name = "Watson Mustache"
		icon_state = "facial_watson"

	hogan
		name = "Hulk Hogan Mustache"
		icon_state = "facial_hogan" //-Neek

	vandyke
		name = "Van Dyke Mustache"
		icon_state = "facial_vandyke"

	chaplin
		name = "Square Mustache"
		icon_state = "facial_chaplin"

	selleck
		name = "Selleck Mustache"
		icon_state = "facial_selleck"

	neckbeard
		name = "Neckbeard"
		icon_state = "facial_neckbeard"

	fullbeard
		name = "Full Beard"
		icon_state = "facial_fullbeard"

	longbeard
		name = "Long Beard"
		icon_state = "facial_longbeard"

	vlongbeard
		name = "Very Long Beard"
		icon_state = "facial_wise"

	elvis
		name = "Elvis Sideburns"
		icon_state = "facial_elvis"

	abe
		name = "Abraham Lincoln Beard"
		icon_state = "facial_abe"

	chinstrap
		name = "Chinstrap"
		icon_state = "facial_chin"

	hip
		name = "Hipster Beard"
		icon_state = "facial_hip"

	gt
		name = "Goatee"
		icon_state = "facial_gt"

	jensen
		name = "Adam Jensen Beard"
		icon_state = "facial_jensen"

	dwarf
		name = "Dwarf Beard"
		icon_state = "facial_dwarf"

	fiveoclock
		name = "Five o Clock Shadow"
		icon_state = "facial_fiveoclock"

	fu
		name = "Fu Manchu"
		icon_state = "facial_fumanchu"

///////////////////////////
// Underwear Definitions //
///////////////////////////
/datum/sprite_accessory/underwear
	icon = 'icons/mob/underwear.dmi'

	nude
		name = "Nude"
		icon_state = null
		gender = NEUTER

	male_white
		name = "Mens White"
		icon_state = "male_white"
		gender = MALE

	male_grey
		name = "Mens Grey"
		icon_state = "male_grey"
		gender = MALE

	male_green
		name = "Mens Green"
		icon_state = "male_green"
		gender = MALE

	male_blue
		name = "Mens Blue"
		icon_state = "male_blue"
		gender = MALE

	male_black
		name = "Mens Black"
		icon_state = "male_black"
		gender = MALE

	male_mankini
		name = "Mankini"
		icon_state = "male_mankini"
		gender = MALE

	male_hearts
		name = "Mens Hearts Boxer"
		icon_state = "male_hearts"
		gender = MALE

	male_blackalt
		name = "Mens Black Boxer"
		icon_state = "male_blackalt"
		gender = MALE

	male_greyalt
		name = "Mens Grey Boxer"
		icon_state = "male_greyalt"
		gender = MALE

	male_stripe
		name = "Mens Striped Boxer"
		icon_state = "male_stripe"
		gender = MALE

	male_kinky
		name = "Mens Kinky"
		icon_state = "male_kinky"
		gender = MALE

	male_red
		name = "Mens Red"
		icon_state = "male_red"
		gender = MALE

	female_red
		name = "Ladies Red"
		icon_state = "female_red"
		gender = FEMALE

	female_white
		name = "Ladies White"
		icon_state = "female_white"
		gender = FEMALE

	female_yellow
		name = "Ladies Yellow"
		icon_state = "female_yellow"
		gender = FEMALE

	female_blue
		name = "Ladies Blue"
		icon_state = "female_blue"
		gender = FEMALE

	female_black
		name = "Ladies Black"
		icon_state = "female_black"
		gender = FEMALE

	female_thong
		name = "Ladies Thong"
		icon_state = "female_thong"
		gender = FEMALE

	female_babydoll
		name = "Babydoll"
		icon_state = "female_babydoll"
		gender = FEMALE

	female_babyblue
		name = "Ladies Baby-Blue"
		icon_state = "female_babyblue"
		gender = FEMALE

	female_green
		name = "Ladies Green"
		icon_state = "female_green"
		gender = FEMALE

	female_pink
		name = "Ladies Pink"
		icon_state = "female_pink"
		gender = FEMALE

	female_kinky
		name = "Ladies Kinky"
		icon_state = "female_kinky"
		gender = FEMALE

	female_tankini
		name = "Tankini"
		icon_state = "female_tankini"
		gender = FEMALE

////////////////////////////
// Undershirt Definitions //
////////////////////////////

/datum/sprite_accessory/undershirt
	icon = 'icons/mob/undershirt.dmi'

	nude
		name = "Nude"
		icon_state = null
		gender = NEUTER

	black_shirt
		name = "Black Shirt"
		icon_state = "bl_shirt"
		gender = NEUTER

	white_shirt
		name = "White Shirt"
		icon_state = "wt_shirt"
		gender = NEUTER


	black_tank_top
		name = "Black Tank Top"
		icon_state = "bl_ttop"
		gender = NEUTER

	white_tank_top
		name = "White Tank Top"
		icon_state = "wt_ttop"
		gender = NEUTER

	atmos_tank
		name = "Atmos Tank Top"
		icon_state = "atmostank"
		gender = NEUTER

	botany_tank
		name = "Botany Tank Top"
		icon_state = "botanytank"
		gender = NEUTER

	engi_tank
		name = "Engineering Tank Top"
		icon_state = "engitank"
		gender = NEUTER

	sci_tank
		name = "Science Tank Top"
		icon_state = "scitank"
		gender = NEUTER

	mine_tank
		name = "Mining Tank Top"
		icon_state = "minetank"
		gender = NEUTER

	jani_tank
		name = "Janitorial Tank Top"
		icon_state = "janitank"
		gender = NEUTER

	med_tank
		name = "Medical Tank Top"
		icon_state = "medtank"
		gender = NEUTER

	robo_tank
		name = "Robotics Tank Top"
		icon_state = "robotank"
		gender = NEUTER

	sec_tank
		name = "Security Tank Top"
		icon_state = "sectank"
		gender = NEUTER

//MrSnapwalk is apparently a basketball fan - RR

	blue_tank_0
		name = "Blue Tank Top (0)"
		icon_state = "0bluetank"
		gender = NEUTER

	blue_tank_1
		name = "Blue Tank Top (1)"
		icon_state = "1bluetank"
		gender = NEUTER

	blue_tank_2
		name = "Blue Tank Top (2)"
		icon_state = "2bluetank"
		gender = NEUTER

	blue_tank_3
		name = "Blue Tank Top (3)"
		icon_state = "3bluetank"
		gender = NEUTER

	blue_tank_4
		name = "Blue Tank Top (4)"
		icon_state = "4bluetank"
		gender = NEUTER

	blue_tank_5
		name = "Blue Tank Top (5)"
		icon_state = "5bluetank"
		gender = NEUTER

	blue_tank_6
		name = "Blue Tank Top (6)"
		icon_state = "6bluetank"
		gender = NEUTER

	blue_tank_7
		name = "Blue Tank Top (7)"
		icon_state = "7bluetank"
		gender = NEUTER

	blue_tank_8
		name = "Blue Tank Top (8)"
		icon_state = "8bluetank"
		gender = NEUTER

	blue_tank_9
		name = "Blue Tank Top (9)"
		icon_state = "9bluetank"
		gender = NEUTER

	red_tank_0
		name = "Red Tank Top (0)"
		icon_state = "0redtank"
		gender = NEUTER

	red_tank_1
		name = "Red Tank Top (1)"
		icon_state = "1redtank"
		gender = NEUTER

	red_tank_2
		name = "Red Tank Top (2)"
		icon_state = "2redtank"
		gender = NEUTER

	red_tank_3
		name = "Red Tank Top (3)"
		icon_state = "3redtank"
		gender = NEUTER

	red_tank_4
		name = "Red Tank Top (4)"
		icon_state = "4redtank"
		gender = NEUTER

	red_tank_5
		name = "Red Tank Top (5)"
		icon_state = "5redtank"
		gender = NEUTER

	red_tank_6
		name = "Red Tank Top (6)"
		icon_state = "6redtank"
		gender = NEUTER

	red_tank_7
		name = "Red Tank Top (7)"
		icon_state = "7redtank"
		gender = NEUTER

	red_tank_8
		name = "Red Tank Top (8)"
		icon_state = "8redtank"
		gender = NEUTER

	red_tank_9
		name = "Red Tank Top (9)"
		icon_state = "9redtank"
		gender = NEUTER

//End of B-Ball nonsense - RR

	rainbow_tank
		name = "Rainbow Tank Top"
		icon_state = "rainbowtank"
		gender = NEUTER

	happy_tank
		name = "Happy Tank Top"
		icon_state = "happytank"
		gender = NEUTER

	neutral_tank
		name = "Neutral Tank Top"
		icon_state = "neutraltank"
		gender = NEUTER

	sad_tank
		name = "Sad Tank Top"
		icon_state = "sadtank"
		gender = NEUTER

	assitant_tank
		name = "Assitant Tank Top"
		icon_state = "assitanttank"
		gender = NEUTER

	dorf_tank
		name = "Dwarf Tank Top"
		icon_state = "dorftank"
		gender = NEUTER

	monkey_tank
		name = "Monkey Tank Top"
		icon_state = "monkeytank"
		gender = NEUTER

	praise_the_sun_tank
		name = "Praise The Sun Tank Top" //Looks a tad shit all capitalised
		icon_state = "praisethesuntank"
		gender = NEUTER

	treehugger_tank
		name = "Treehugger Tank"
		icon_state = "treehuggertank"
		gender = NEUTER