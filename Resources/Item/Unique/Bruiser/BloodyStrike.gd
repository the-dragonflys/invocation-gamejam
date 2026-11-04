class_name BloodyStrike extends Item

# Causa dano e intimida o inimigo (reduzindo a força dele ou aumentando a própria)
var act_strike = Action.new(Action.Types.ATTACK, 5, Action.Stats.LIFE)
var act_intimidate = Action.new(Action.Types.ENEMY_DEBUFF, -10, Action.Stats.STRENGTH)

func _init() -> void:
	item_ref = preload("res://Entities/Item/Unique/Bruiser/BloodyStrike.tscn")
	item_name = "Golpe Sangrento"
	item_typ = Types.ATTACK
	description = "Golpe no dorso seguido de intimidação ao lamber o sangue da arma."
	actions = [act_strike, act_intimidate]
	cost = 3
