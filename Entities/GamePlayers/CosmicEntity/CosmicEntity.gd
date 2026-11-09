extends PlayerDef
class_name CosmicEntity

var soundPlaying : bool = false
var next_idx : int = 0

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
	team = team.create_instance()
	GlobalSignals.enemy_fighter_died.connect(fighter_died)
	set_fighter()
func check_if_lost() -> void:
	if death_counter == 4:
		GlobalSignals.entity_lost.emit()
		lost = true


#	FIGHTER RELATED
func set_fighter() -> void:
	curr_fighter = team.get_fighter(next_idx)
	next_idx += 1
	update_figher_view()
func fighter_died() -> void:
	death_counter += 1
	check_if_lost()
	if not lost:
		set_fighter()
