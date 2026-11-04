extends Fighter
class_name BillyBrute

func _ready() -> void:
	base = preload("res://Resources/Fighter/Classes/Bruiser.tres")
	fighter_ref = preload("res://Entities/Fighter/Earthlings/BillyBrute/BillyBrute.tscn")
