class_name ImprovisedGlassKnife extends Item

var act_strike_off = Action.new(Action.Types.ATTACK, 5, Action.Stats.LIFE) 
var act_self_cut = Action.new(Action.Types.SELF_DEBUFF, -1, Action.Stats.LIFE) 

func _init() -> void:
	item_ref = load("res://Entities/Item/Default/Attack/ImprovisedGlassKnife.tscn")
	item_name = "Faca de Vidro Improvisada"
	item_typ = Types.ATTACK
	description = "Faca \"Artesanal\" feita com um grande caco de vidro e algumas bandagens, pode produzir cortes profundos causando um dano considerável , porém pode causar ferimentos ao portador."
	actions = [act_strike_off, act_self_cut]
	cost =  2
