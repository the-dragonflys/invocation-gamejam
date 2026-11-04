class_name Resilience extends Item

var act_heal = Action.new(Action.Types.BUFF, 6, Action.Stats.LIFE)
var act_willpower = Action.new(Action.Types.BUFF, 15, Action.Stats.STRENGTH)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/DamageCarrier/Resilience.tscn")
	item_name = "Resiliência"
	item_typ = Types.HEAL
	description = "Levanta após apanhar pela pura força de vontade, recuperando vida e ganhando bônus de moral."
	actions = [act_heal, act_willpower]
	cost = 3
