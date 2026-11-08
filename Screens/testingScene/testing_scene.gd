extends Node2D

@export var f1 : Fighter
@export var f2 : Fighter

func _ready() -> void:
	$Arena._set_fighters(f1, f2)
