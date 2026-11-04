extends Fighter
class_name BirglyBruiter

func _ready() -> void:
	base = preload("res://Resources/Fighter/Classes/Bruiser.tres")
	fighter_ref = preload("res://Entities/Fighter/Aliens/BirglyBruiter/BirglyBruiter.tscn")
