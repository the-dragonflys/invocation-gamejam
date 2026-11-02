class_name MagneticCuff extends Item

var action = Action.new(Action.Types.ENEMY_DEBUFF, 0, Action.Stats.STATE, States.Types.STUNNED)

func _init() -> void:
	item_name = "Algemas magnéticas"
	item_typ = Types.ATTACK
	description = "Algema magnética que impede o inimigo de usar itens defensivos no próximo turno."
	actions = [action]
	cost = 3
