class_name ElectricPin extends Item

var action = Action.new(Action.Types.ENEMY_DEBUFF, -20, Action.Stats.STRENGTH)

func _init() -> void:
	item_name = "Pino elétrico"
	item_typ = Types.DEBUFF
	description = """Dispara um pino elétrico que perfura o inimigo. 
	Causa pulsos elétricos que deixa o corpo em estado de dormencia.
	Não causa dano, mas reduz a força do inimigo."""
	actions = [action]
	cost = 2
