extends PlayerDef
class_name CosmicEntity

signal entity_lost

var soundPlaying : bool = false
var curr_idx : int = 0

func _setup() -> void:
	curr_fighter = Team.get(curr_idx)

func _on_sound_timer_timeout() -> void:
	if not soundPlaying:
		var chance : int = randi_range(0, 3)
		if (chance != 3):
			$CosmicEntitySound.play()
			soundPlaying = true


func _on_cosmic_entity_sound_finished() -> void:
	soundPlaying = false

func _on_fighter_died() -> void:
	curr_idx += 1
	if (curr_idx <= 3):
		curr_fighter = Team.get(curr_idx)
	else:
		entity_lost.emit()
