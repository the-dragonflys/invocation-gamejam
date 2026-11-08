class_name CounterHook extends Item

var act_counter_dmg = Action.new(Action.Types.ATTACK, 3, Action.Stats.LIFE)
# Tem que fazer o bagulho do counter funcionar, vou deixar o tipo como STUNNED por enquanto pra ficar mais de boa
var act_counter_stun = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE, States.Types.STUNNED)

func _init() -> void:
	item_ref = load("res://Entities/Item/Unique/DamageCarrier/CounterHook.tscn")
	item_name = "Cruzado de Contra-Ataque"
	item_typ = Types.CONTROL
	description = "Dá um cruzado que o desnorteia e anula seu ataque."
	actions = [act_counter_dmg, act_counter_stun]
	cost = 3
