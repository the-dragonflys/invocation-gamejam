extends PlayerDef
class_name CosmicEntity

var itemgiver : ItemGiver
var soundPlaying : bool = false

func _setup() -> void:
	Team.push_back(BirglyBruiter.new())
	Team.push_back(BrizockTrocky.new())
	Team.push_back(ZibZibZub.new())
	Team.push_back(ZorlobGord.new())


func _on_sound_timer_timeout() -> void:
	if not soundPlaying:
		var chance : int = randi_range(0, 3)
		if (chance != 3):
			$CosmicEntitySound.play()
			soundPlaying = true


func _on_cosmic_entity_sound_finished() -> void:
	soundPlaying = false
