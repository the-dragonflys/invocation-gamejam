class_name BloodThirst extends Item

# Recupera vida e mantém a agressividade
var act_heal = Action.new(Action.Types.BUFF, 5, Action.Stats.LIFE)
var act_aggro = Action.new(Action.Types.BUFF, 1, Action.Stats.STRENGTH)

func _init() -> void:
	item_name = "Sede de Sangue"
	item_typ = Types.HEAL
	description = "Bebe o próprio sangue para recuperar vitalidade e manter a agressividade."
	actions = [act_heal, act_aggro]
	cost = 2
