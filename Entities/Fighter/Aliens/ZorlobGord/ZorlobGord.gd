extends Fighter
class_name ZorlobGord

func _ready() -> void:
	base = preload("res://Resources/Fighter/Classes/Tank.tres")
	fighter_ref = preload("res://Entities/Fighter/Aliens/ZorlobGord/ZorlobGord.tscn")
