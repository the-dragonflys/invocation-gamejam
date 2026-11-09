class_name Dialogue
extends Control

@onready var label : RichTextLabel = $TextLabel
@export var dialogue_piece : Dialog : set = set_dialog

func _ready() -> void:
	GlobalSignals.ally_fighter_died.connect(fighter_died)
	GlobalSignals.ally_fighter_choosen.connect(fighter_choosen)

func set_dialog(d : Dialog) -> void:
	dialogue_piece = d
	label.text = dialogue_piece.text
	GlobalSignals.play_dialog_effect.emit()

func reset() -> void:
	var d : Dialog = load("res://Objects/DialogPack/Dialog/first_scene/07.tres")
	set_dialog(d)

func fighter_died(_a : int) -> void:
	var d : Dialog = load("res://Objects/DialogPack/Dialog/choose_your_fighter.tres")
	set_dialog(d)

func fighter_choosen(_a : int) -> void:
	reset()
	print("reaching")
