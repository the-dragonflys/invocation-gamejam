class_name AdrenalineSyringe extends Item

var act_get_a_shot = Action.new(Action.Types.BUFF, 12, Action.Stats.STRENGTH)
var act_take_a_injection = Action.new(Action.Types.BUFF, 12, Action.Stats.DEFENSE)

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Buff/AdrenalineSyringe.tscn")
	item_name = "Seringa de Adrenalina"
	item_typ = Types.BUFF
	description =  "Seringa de vidro suja que garante ação dupla imediata, aumentando ataque e defesa por igual durante uma rodada."
	actions = [act_get_a_shot, act_take_a_injection]
	cost =  3
