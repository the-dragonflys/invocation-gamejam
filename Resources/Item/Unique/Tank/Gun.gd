class_name Gun extends Item

var action = Action.new(Action.Types.ATTACK, 5, Action.Stats.LIFE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Tank/Gun.tscn")
	item_name = "Pistola"
	item_typ = Types.ATTACK
	description = "Uma pistola. Ela atira."
	actions = [action]
	cost = 1
