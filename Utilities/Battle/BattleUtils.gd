extends Node
class_name BattleUtils

# I NEED TO CREATE THE FUNCTION TO THE DEBUFF
static func use_buff(a : Action, target : Fighter) -> void:
	match a.stats:
		Action.Stats.LIFE:
			pass
		Action.Stats.STRENGTH:
			pass
		Action.Stats.DEFENSE:
			pass
		Action.Stats.INITIATIVE:
			pass
		Action.Stats.STATE:
			target.change_state(a.stateChange)

static func use_debuff(a : Action, target : Fighter) -> void:
	match a.stats:
		Action.Stats.LIFE:
			pass
		Action.Stats.STRENGTH:
			pass
		Action.Stats.DEFENSE:
			pass
		Action.Stats.INITIATIVE:
			pass
		Action.Stats.STATE:
			target.change_state(a.stateChange)
