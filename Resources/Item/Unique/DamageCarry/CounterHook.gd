class_name CounterHook extends Item

var act_counter_dmg = Action.new(Action.Types.ATTACK, 4, Action.Stats.LIFE)
var act_counter_stun = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE, States.Types.STUNNED)

func _init() -> void:
	item_name = "Cruzado de Contra-Ataque"
	item_typ = Types.CONTROL
	description = "Dá um cruzado que o desnorteia e anula seu ataque."
	actions = [act_counter_dmg, act_counter_stun]
	cost = 3
