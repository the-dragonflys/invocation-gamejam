class_name TeslaCoil extends Item

var act_shield = Action.new(Action.Types.BUFF, 5, Action.Stats.DEFENSE)
# Buscar alguma forma de fazer o acumulo de dano e colocar na action abaixo
var act_burst_shild = Action.new(Action.Types.ATTACK, 0, Action.Stats.LIFE)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Mage/TeslaCoil.tscn")
	item_name = "Bobina de Tesla"
	item_typ = Types.BUFF
	description = """Gera um campo de força para si mesmo quando utilizado. 
	O campo de força absorve ataques do inimigo e ao final do turno 
	libera energia causando 25% do dano absorvido."""
	actions = [act_shield, act_burst_shild]
	cost = 3
