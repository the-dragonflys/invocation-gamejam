class_name KneeBreaker extends Item

# Aplica STUNNED (perde 1 round) e reduz INITIATIVE (ataca por último no seguinte)
var act_stun = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE, States.Types.STUNNED)
var act_slow = Action.new(Action.Types.ENEMY_DEBUFF, -1, Action.Stats.INITIATIVE)

func _init() -> void:
	item_ref = load("res://Entities/Item/Unique/Bruiser/KneeBreaker.tscn")
	item_name = "Quebra joelhos"
	item_typ = Types.DEBUFF
	description = "Quebra as pernas do inimigo, fazendo-o perder 1 turno e atacar por último no seguinte."
	actions = [act_stun, act_slow]
	cost = 3
