class_name SteroidShot extends Item

var act_steroid = Action.new(Action.Types.BUFF, 25, Action.Stats.DEFENSE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Tank/SteroidShot.tscn")
	item_name = "Dose de Anabolizante"
	item_typ = Types.BUFF
	description = "Injeção de anabolizante que aumenta os atributos de defesa durante o turno."
	actions = [act_steroid]
	cost = 2
