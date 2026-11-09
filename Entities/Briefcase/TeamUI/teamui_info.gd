extends Node2D

@onready var PVLabel : RichTextLabel = $PVLabel
@onready var PALabel : RichTextLabel = $PALabel

func _enter_tree() -> void:
	GlobalSignals.action_points_changed.connect(_update_pa)

func _update_pa(current : int):
	PALabel.text = str(current)
