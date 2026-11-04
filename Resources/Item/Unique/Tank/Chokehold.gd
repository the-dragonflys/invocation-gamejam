class_name Chokehold extends Item

var act_stun = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE, States.Types.STUNNED)
var act_strain = Action.new(Action.Types.SELF_DEBUFF, -2, Action.Stats.LIFE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Tank/Chokehold.tscn")
	item_name = "Mata leão"
	item_typ = Types.CONTROL
	description = "Imobiliza o inimigo por trás, tirando o turno dele ao custo de pouca vida."
	actions = [act_stun, act_strain]
	cost = 3
