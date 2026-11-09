extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalSignals.play_dialog_effect.connect(play_sound_effect)

func play_sound_effect() -> void:
	$AudioStreamPlayer2D.play()
