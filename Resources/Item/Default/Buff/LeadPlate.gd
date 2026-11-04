class_name LeadPlate extends Item

var act_equip = Action.new(Action.Types.BUFF, 12, Action.Stats.DEFENSE)

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Buff/LeadPlate.tscn")
	item_name = "Placa de Chumbo"
	item_typ = Types.BUFF
	description = "Placa de chumbo densa que deixa o lutador mais resistente a golpes."
	actions = [act_equip]
	cost = 1
