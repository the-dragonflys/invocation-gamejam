extends Fighter
class_name HopperTank

func _ready() -> void:
	base = preload("res://Resources/Fighter/Classes/Tank.tres")
	fighter_ref = preload("res://Entities/Fighter/Earthlings/HopperTank/HopperTank.tscn")
