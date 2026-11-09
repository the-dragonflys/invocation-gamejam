class_name CutscenePlayer
extends Node2D

var credits : bool = false
@onready var stream_player : VideoStreamPlayer = $VideoStreamPlayer
@onready var streamtheora : VideoStreamTheora = VideoStreamTheora.new()

func _ready() -> void:
	streamtheora.file = "res://Assets/Videos/cutscene_scene_ntsc-converted.ogv"
	stream_player.stream = streamtheora
	stream_player.play()

func credits_scene() -> void:
	streamtheora.file = "res://Assets/Videos/credits_scene_ntsc-converted.ogv"
	stream_player.play()
	credits = true

func _on_video_stream_player_finished() -> void:
	if credits:
		GlobalSignals.end_game.emit()
