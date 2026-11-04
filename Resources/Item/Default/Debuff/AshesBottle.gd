class_name AshesBottle extends Item

var act_cegar = Action.new(Action.Types.ENEMY_DEBUFF, 10, Action.Stats.STRENGTH)

func _init() -> void:
	item_name = "Frasco de Cinzas"
	item_typ = Types.DEBUFF
	description = "Frasco com cinzas jogado no rosto do oponente, garantindo que o próximo ataque inimigo erre o alvo. Diminui o ataque do inimigo."
	actions = [act_cegar]
	cost = 2
