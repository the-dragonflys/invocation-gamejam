class_name EnergeticPill extends Item

var action = Action.new(Action.Types.BUFF, 10, Action.Stats.LIFE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Mage/EnergeticPill.tscn")
	item_name = "Pílula energética"
	item_typ = Types.HEAL
	description = "Uma pílula que dá energia."
	actions = [action]
	cost = 1
