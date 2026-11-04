extends Fighter
class_name TeslaMage

func _ready() -> void:
	base = preload("res://Resources/Fighter/Classes/Mage.tres")
	fighter_ref = preload("res://Entities/Fighter/Earthlings/TeslaMage/TeslaMage.tscn")
