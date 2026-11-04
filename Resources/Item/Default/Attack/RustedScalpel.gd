class_name RustedScalpel extends Item

var act_hit = Action.new(Action.Types.ATTACK, 5, Action.Stats.LIFE) 

func _init() -> void:
	item_name = "Bisturi Enferrujado"
	item_typ = Types.ATTACK
	description = "Bisturi enferrujado que causa um corte profundo, porém impreciso."
	actions = [act_hit]
	cost =  2
