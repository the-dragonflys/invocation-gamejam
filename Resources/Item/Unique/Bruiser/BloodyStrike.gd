extends Item
class_name BloodyStrike 

# Causa dano e intimida o inimigo (reduzindo a força dele ou aumentando a própria)
var act_strike = Action.new(Action.Types.ATTACK, 5, Action.Stats.LIFE)
var act_intimidate = Action.new(Action.Types.ENEMY_DEBUFF, -2, Action.Stats.STRENGTH)

func _ready() -> void:
	description = "Golpe no dorso seguido de intimidação ao lamber o sangue da arma."
	actions = [act_strike, act_intimidate]
