extends Control
class_name Arena

var ally : Fighter
var enemy : Fighter
@export var fighters_in_scene : Array[Node2D]

var TurnManager : TurnQueue = TurnQueue.new()

func _set_fighters(al : Fighter, en : Fighter) -> void:
	ally = al
	enemy = en
	
	fighters_in_scene[0] = ally.fighter_ref.instantiate()
	fighters_in_scene[1] = enemy.fighter_ref.instantiate()

func round_start() -> void:
	TurnManager.generate_queue(ally, enemy)

func _turn_execution() -> void:
	# [ 1 ] Get who's the first and the second
	var first : Fighter = TurnManager.get_whos_turn()
	var second : Fighter = TurnManager.get_whos_turn()
	
	# [ 2 ] Run each of their actions
	# [ 2.1 ] First
	run_actions(first, second)
	
	# [ 2.2 ] Second
	run_actions(second, first)

func run_actions(acting : Fighter, target: Fighter) -> void:
	while acting.can_act():
		var curr : Action = acting._realize_action()
		match curr.type:
			Action.Types.SELF_DEBUFF or Action.Types.BUFF:
				acting.self_buff_debuff(curr)
				
			Action.Types.SELF_ATTACK:
				acting.self_attack(curr)
				
			Action.Types.ENEMY_DEBUFF:
				if curr.stats == Action.Stats.STATE:
					target.change_state(curr.stateChange)
				elif curr.stats == Action.Stats.INITIATIVE:
					target.change_initiative()
				elif curr.stats == Action.Stats.DEFENSE:
					target.change_defense(curr.modifier)
				elif curr.stats == Action.Stats.STRENGTH:
					target.change_strength(curr.modifier)
