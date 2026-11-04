class_name NailandTetanus extends Item

var act_transmit_tetanus = Action.new(Action.Types.ENEMY_DEBUFF, -20, Action.Stats.DEFENSE)

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Debuff/Nail_and_Tetanus.tscn")
	item_name = "Prego com Tétano"
	item_typ = Types.DEBUFF
	description = "Prego com tétano, literalmente causa tétano no oponente, diminuindo sua defesa."
	actions = [act_transmit_tetanus]
	cost = 1
