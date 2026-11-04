class_name ShockGun extends Item

var action = Action.new(Action.Types.ATTACK, 3, Action.Stats.LIFE)

func _init() -> void:
	item_name = "Shock Gun"
	item_typ = Types.ATTACK
	description = "A shock gun. Doesn't stun."
	actions = [action]
	cost = 1
