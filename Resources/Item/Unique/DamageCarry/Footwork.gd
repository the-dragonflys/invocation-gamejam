class_name Footwork extends Item

var act_dmg_buff = Action.new(Action.Types.BUFF, 15, Action.Stats.STRENGTH)


func _init() -> void:
	item_name = "Jogo de Pernas"
	item_typ = Types.BUFF
	description = "Movimentação rápida de pernas que aumenta o dano do próximo ataque."
	actions = [act_dmg_buff]
	cost = 2
