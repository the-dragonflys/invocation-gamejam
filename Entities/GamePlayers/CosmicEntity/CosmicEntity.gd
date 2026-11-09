extends PlayerDef
class_name CosmicEntity

var soundPlaying : bool = false
var curr_idx : int = 0

#	SOUND EFFECTS
func _on_sound_timer_timeout() -> void:
	if not soundPlaying:
		var chance : int = randi_range(0, 3)
		if (chance != 3):
			$CosmicEntitySound.play()
			soundPlaying = true
func _on_cosmic_entity_sound_finished() -> void:
	soundPlaying = false

#	OVERRIDEN FUNCTIONS
func _setup() -> void:
	pass
func set_fighter(idx : int) -> void:
	curr_fighter = team.get_fighter(curr_idx)
	curr_idx += 1
