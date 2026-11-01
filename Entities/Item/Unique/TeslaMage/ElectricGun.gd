class_name ElectricGun extends Item

func _init(item_name: String, item_typ: Types, description: String, actions: Array, cost: int) -> void:
	item_name = "Electric Gun"
	item_typ = Types.ATTACK
	description = "An improvised electric gun that stuns the enemy."
	actions = []
	cost = 2
