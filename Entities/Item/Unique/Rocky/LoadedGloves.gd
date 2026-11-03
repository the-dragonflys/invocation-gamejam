class_name LoadedGloves extends Item

var act_weaken = Action.new(Action.Types.ENEMY_DEBUFF, -4, Action.Stats.STRENGTH)

func _init() -> void:
	item_name = "Luvas Chumbadas"
	item_typ = Types.DEBUFF
	description = "Luvas com pedras dentro. Acertos deixam o inimigo confuso e com dano reduzido."
	actions = [act_weaken]
	cost = 2
