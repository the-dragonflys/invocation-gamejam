extends Node

var import_screen : PackedScene
var curr_screen : Node2D

func _ready() -> void:
	import_screen = load("res://Utilities/CutscenePlayer/CutscenePlayer.tscn")
	curr_screen = import_screen.instantiate()
	add_child(curr_screen)
	$CutsceneTimer.start()

func _on_cutscene_timer_timeout() -> void:
	remove_child(curr_screen)
	import_screen = load("res://Screens/Desk/Desk.tscn")
	curr_screen = import_screen.instantiate()
	add_child(curr_screen)
