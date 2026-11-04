extends Node

var import_screen : PackedScene
var curr_screen : Node2D
var cutscene_ended : bool

func _ready() -> void:
	import_screen = load("res://Screens/CutscenePlayer/CutscenePlayer.tscn")
	curr_screen = import_screen.instantiate()
	
	cutscene_ended = false
	add_child(curr_screen)
	
	$CutsceneTimer.start()

func _on_cutscene_timer_timeout() -> void:
	if (not cutscene_ended):
		cutscene_ended = true
		
		remove_child(curr_screen)
		
		import_screen = load("res://Screens/Desk/Desk.tscn")
		curr_screen = import_screen.instantiate()
		add_child(curr_screen)
		
		$Soundtrack.play()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_escape") and not cutscene_ended:
		$CutsceneTimer.timeout.emit()
		$CutsceneTimer.stop()
