class_name SmellingSalts extends Item

var act_inhale = Action.new(Action.Types.BUFF, 10, Action.Stats.STRENGTH)

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Buff/SmellingSalts.tscn")
	item_name = "Sais de Amônia"
	item_typ = Types.BUFF
	description = "Frasco trincado com sais de amônia. O cheiro forte aumenta o dano temporariamente."
	actions = [act_inhale]
	cost =  2
