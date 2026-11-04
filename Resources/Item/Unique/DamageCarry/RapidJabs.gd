class_name RapidJabs extends Item

var act_jabs = Action.new(Action.Types.ATTACK, 7, Action.Stats.LIFE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/DamageCarrier/RapidJabs.tscn")
	item_name = "Socos Rápidos"
	item_typ = Types.ATTACK
	description = "Sequência de socos rápidos para dano consistente."
	actions = [act_jabs]
	cost = 2
