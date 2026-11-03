class_name Shotgun extends Item

# Muda o estado para SHOTGUN para que o próximo ataque vire um tiro
var act_pull_shotgun = Action.new(Action.Types.BUFF, 0, Action.Stats.STATE, States.Types.SHOTGUN)

func _init() -> void:
	item_name = "Escopeta"
	item_typ = Types.BUFF
	description = "Saca uma espingarda escondida, garantindo que o próximo ataque seja um tiro."
	actions = [act_pull_shotgun]
	cost = 3
