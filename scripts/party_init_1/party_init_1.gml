global.party = {}

/// @desc intializes the party stuff
function party_init_1() {
    party_m_initialize("felix", party_m_felix)
	party_m_initialize("sirra", party_m_sirra)
    
	global.party_names = []
}

function party_m_felix() : party_m() constructor {
	name = "party_felix_name"
    action_letter = "party_felix_action_letter"
	
	// colors
	color = c_red
	darkcolor = c_red
	iconcolor = #c23658
	
	// stats
	lv =	save_get("chapter")
	desc =	"party_felix_desc"
	power_stats = [
		["--", 0, spr_ui_menu_icon_exclamation],
		["--", 0, spr_ui_menu_icon_exclamation],
		["party_stat_guts", 1, spr_ui_menu_icon_fire],
	]
	
	max_hp =		party_m_calculate_hp(85, lv)
    hp =		max_hp
	attack =	16
	defense =	10
	magic =		0
	element_resistance = {
	}
	
	// inventory
	weapon = undefined
	armor1 = undefined
	armor2 = undefined
	spells = [
		new item_s_act(),
	]
	
	// sprites
	s_state =		""
	s_substate =	""
	s_icon =		spr_ui_felix_icon
	s_icon_ow =		spr_ui_felix_head
	s_icon_weapon = spr_ui_menu_weapon_sword
	s_battle_intro =	1 // 1 for attack, 0 for full intro	
	
	battle_sprites = { // [sprite, whether stop at the end (or change to what sprite), (image speed)]
		act: [spr_bfelix_act, true],
		actready: spr_bfelix_actready,
		actend: [spr_bfelix_actend, "idle", 1],
		attack: [spr_bfelix_attack, true],
		attackready: spr_bfelix_attackready,
		defeat: spr_bfelix_defeat,
		defend: [spr_bfelix_defend, true],
		hurt: spr_bfelix_hurt,
		idle: spr_bfelix_idle,
		intro: [spr_felix_right, true],
		introb: spr_bkris_introb,
		itemuse: [spr_bkris_item, "idle", 1],
		itemready: spr_bkris_itemready,
		victory: [spr_bkris_victory, true],
		spare: [spr_bfelix_act, "idle", 1],
		attack_eff: spr_bkris_attackeff,
	}
		
	// system
	obj = {
		obj: o_actor_felix,
		var_struct: {
			name: "felix"
		},
	}
}
function party_m_sirra() : party_m() constructor {
	name = "party_sirra_name"
    action_letter = "party_sirra_action_letter"
	
	// colors
	color = c_purple
	darkcolor = c_purple
	iconcolor = #C03DD1
	
	// stats
	lv =	save_get("chapter")
	desc =	"party_sirra_desc"
	power_stats = [
		["--", 0, spr_ui_menu_icon_exclamation],
		["--", 0, spr_ui_menu_icon_exclamation],
		["party_stat_guts", 2, spr_ui_menu_icon_fire],
	]
	
	max_hp =	party_m_calculate_hp(130, lv)
    hp =		max_hp
	attack =	15
	defense =	2
	magic =		18
	element_resistance = {
	}
	
	// inventory
    weapon = undefined
	armor1 = undefined
	armor2 = undefined
	spells = [
		new item_s_healprayer()
	]
	
	// sprites
	s_state =		"" // sad, sad_subtle, hat
	s_substate =	""
	s_icon =		spr_ui_sirra_icon
	s_icon_ow =		spr_ui_sirra_head
	s_icon_weapon = spr_ui_menu_weapon_axe
	s_battle_intro =	1 // 1 for attack, 0 for full intro	
	
	battle_sprites = { // [sprite, whether stop at the end (or change to what sprite), (image speed)]
		act: [spr_bralsei_act, true],
		actready: spr_bsirra_actready,
		actend: [spr_bsirra_actend, "idle", 1],
		attack: [spr_bsirra_attack, true],
		attackready: spr_bsirra_attackready,
		defeat: spr_bsirra_defeat,
		defend: [spr_bsirra_defend, true],
		hurt: spr_bsirra_hurt,
		idle: spr_bsirra_idle,
		intro: [spr_bralsei_intro, true],
		introb: spr_sirra_right,
		itemuse: [spr_bkris_item, "idle", 1],
		itemready: spr_bkris_itemready,
		spell: [spr_bralsei_spell, "idle", 1],
		spellready: spr_bralsei_spellready,
		victory: [spr_bkris_victory, true],
		spare: [spr_bkris_act, "idle", 1],
		attack_eff: spr_bkris_attackeff,
	}
		
	//system
	obj = {
		obj: o_actor_sirra,
		var_struct: {
			name: "sirra"
		},
	}
}