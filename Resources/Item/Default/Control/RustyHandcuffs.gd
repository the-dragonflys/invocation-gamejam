class_name RustyHandcuffs extends Item

var act_prender = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE, States.Types.STUNNED) 

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Control/RustyHandcuffs.tscn")
	item_name = "Algemas Enferrujadas"
	item_typ = Types.CONTROL
	description = "Algema prendendo uma mão do oponente à mesa, bloqueando o ataque dele nessa rodada."
	actions = [act_prender]
	cost = 2
