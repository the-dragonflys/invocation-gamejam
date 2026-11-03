class_name CrowbarParry extends Item

var act_parry = Action.new(Action.Types.BUFF, 4, Action.Stats.DEFENSE)

func _init() -> void:
	item_name = "Aparar com Pé de Cabra"
	item_typ = Types.BUFF
	description = "Usa o pé de cabra para aparar, recebendo menos dano na rodada seguinte."
	actions = [act_parry]
	cost = 2
