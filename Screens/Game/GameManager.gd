extends Node

@onready var timer : Timer = $Timer
@onready var cutscene_screen : CutscenePlayer = preload("res://Screens/CutscenePlayer/CutscenePlayer.tscn").instantiate()
var desk : PackedScene
var curr_screen : Node2D
var cutscene_ended : bool

func _ready() -> void:
	GlobalSignals.end_game.connect(end_game)
	GlobalSignals.play_credits.connect(play_credits)
	curr_screen = cutscene_screen
	
	cutscene_ended = false
	add_child(curr_screen)
	
	timer.wait_time = 47
	timer.start()

func _on_cutscene_timer_timeout() -> void:
	if (not cutscene_ended):
		cutscene_ended = true
		
		remove_child(curr_screen)
		
		desk = preload("res://Screens/Desk/Desk.tscn")
		curr_screen = desk.instantiate()
		add_child(curr_screen)
		
		$Soundtrack.play()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_escape") and not cutscene_ended:
		timer.timeout.emit()
		timer.stop()

func end_game() -> void:
	get_tree().quit(0)

func play_credits() -> void:
	$Soundtrack.stop()
	remove_child(curr_screen)
	add_child(cutscene_screen)
	cutscene_screen.credits_scene()
	
