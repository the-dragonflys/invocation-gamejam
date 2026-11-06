class_name RustyHandcuffs extends Item

var act_cegar = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE) 

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Control/RustyHandcuffs.tscn")
	item_name = "Frasco de Cinzas"
	item_typ = Types.CONTROL
	description = "Algema prendendo uma mão do oponente à mesa, bloqueando o ataque dele nessa rodada."
	actions = [act_cegar]
	cost = 2
