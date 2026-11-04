class_name ToxicSyringe extends Item

var act_break_def = Action.new(Action.Types.ENEMY_DEBUFF, -20, Action.Stats.DEFENSE)

func _init() -> void:
	item_name = "Seringa Tóxica"
	item_typ = Types.DEBUFF
	description = "Injeta o anabolizante diretamente no inimigo para quebrar a defesa adversária."
	actions = [act_break_def]
	cost = 2
