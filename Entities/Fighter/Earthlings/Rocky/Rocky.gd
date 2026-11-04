extends Fighter
class_name Rocky

func _ready() -> void:
	base = preload("res://Resources/Fighter/Classes/DamageCarry.tres")
	fighter_ref = preload("res://Entities/Fighter/Earthlings/Rocky/Rocky.tscn")
