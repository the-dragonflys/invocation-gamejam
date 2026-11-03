class_name ElectricGun extends Item

var action = Action.new(Action.Types.ATTACK, 7, Action.Stats.LIFE, States.Types.STUNNED)

func _init() -> void:
	item_name = "Electric Gun"
	item_typ = Types.ATTACK
	description = "An improvised electric gun that stuns the enemy."
	actions = [action]
	cost = 3
