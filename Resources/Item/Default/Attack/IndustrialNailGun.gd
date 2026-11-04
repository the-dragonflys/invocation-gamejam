class_name IndustrialNailGun extends Item

var act_shot = Action.new(Action.Types.ATTACK, 3, Action.Stats.LIFE) 

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Attack/IndustrialNailGun.tscn")
	item_name = "Arma industrial de pregos"
	item_typ = Types.ATTACK
	description = "Pistola de pregos pesada, atira uma rajada de pregos no oponente."
	actions = [act_shot]
	cost =  1
