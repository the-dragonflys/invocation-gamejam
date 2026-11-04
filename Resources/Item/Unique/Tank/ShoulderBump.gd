class_name ShoulderBump extends Item

var act_shoulder = Action.new(Action.Types.ATTACK, 7, Action.Stats.LIFE)
var act_shoulder_pain = Action.new(Action.Types.SELF_DEBUFF, -2, Action.Stats.LIFE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Tank/ShoulderBump.tscn")
	item_name = "Ombrada"
	item_typ = Types.ATTACK
	description = "Dá uma ombrada no inimigo. Mas isso machuca."
	actions = [act_shoulder, act_shoulder_pain]
	cost = 3
