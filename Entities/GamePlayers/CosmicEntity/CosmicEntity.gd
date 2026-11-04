extends PlayerDef
class_name CosmicEntity

var soundPlaying : bool = false
var curr_idx : int = 0

func _setup() -> void:
	Team.set(0, BirglyBruiter.new())
	Team.set(1, BrizockTrocky.new())
	Team.set(2, ZibZibZub.new())
	Team.set(3, ZorlobGord.new())

	curr_fighter = Team[curr_idx]

func _on_sound_timer_timeout() -> void:
	if not soundPlaying:
		var chance : int = randi_range(0, 3)
		if (chance != 3):
			$CosmicEntitySound.play()
			soundPlaying = true


func _on_cosmic_entity_sound_finished() -> void:
	soundPlaying = false
