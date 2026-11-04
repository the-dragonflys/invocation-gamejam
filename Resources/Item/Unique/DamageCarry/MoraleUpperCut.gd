class_name MoraleUpperCut extends Item

# Causa dano alto e aumenta a própria força
var act_uppercut = Action.new(Action.Types.ATTACK, 8, Action.Stats.LIFE)
var act_morale = Action.new(Action.Types.BUFF, 1, Action.Stats.STRENGTH)

func _init() -> void:
	item_name = "Gancho de Moral"
	item_typ = Types.ATTACK
	description = "Gancho poderoso que causa mais dano quanto maior for o ímpeto do personagem."
	actions = [act_uppercut, act_morale]
	cost = 3
