trigger_code = function() {
    instance_activate_object(inst_3CB25A36)
    
    cutscene_create()
    cutscene_player_canmove(false)
    cutscene_party_follow(false)
	
	cutscene_dialogue([
		"{char(sirra, 0)}* If you're really considering watching a movie...",
		"{char(sirra, 1)}* At least get some snacks.",
		"{char(sirra, 2)}* That's like...the number one rule in a movie night.",
		],, false, false)
	cutscene_wait_dialogue_finish()

	cutscene_party_follow(true)
    cutscene_party_interpolate()
    cutscene_player_canmove(true)
    cutscene_play()
}