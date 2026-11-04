class_name BoxerGuard extends Item

var act_guard = Action.new(Action.Types.BUFF, 6, Action.Stats.DEFENSE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Tank/BoxerGuard.tscn")
	item_name = "Guarda de Boxeador"
	item_typ = Types.BUFF
	description = "Postura de boxeador que mitiga severamente o dano no proximo turno."
	actions = [act_guard]
	cost = 2
