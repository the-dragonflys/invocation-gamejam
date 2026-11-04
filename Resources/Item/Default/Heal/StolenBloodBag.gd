class_name StolenBloodBag extends Item

var act_curar_se = Action.new(Action.Types.BUFF, 8, Action.Stats.LIFE)

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Heal/StolenBloodBag.tscn")
	item_name = "Bolsa de Sangue Roubada"
	item_typ = Types.HEAL
	description = "Bolsa de sangue fria com agulha grossa. Restaura muita vida."
	actions = [act_curar_se]
	cost = 3
