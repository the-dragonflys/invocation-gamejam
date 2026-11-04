class_name CrowbarSmash extends Item

var act_smash = Action.new(Action.Types.ATTACK, 8, Action.Stats.LIFE)

func _init() -> void:
	item_ref = load("res://Entities/Item/Unique/Bruiser/CrowbarSmash.tscn")
	item_name = "Golpe de Pé de Cabra"
	item_typ = Types.ATTACK
	description = "Golpe brutal e direto com pé de cabra na cabeça."
	actions = [act_smash]
	cost = 3
