extends Control
class_name Arena

@onready var ally_side : FighterView = $Fighters/FighterView as FighterView
@onready var enemy_side : FighterView = $Fighters/FighterView2 as FighterView
var ally : Fighter
var enemy : Fighter

func _ready() -> void:
	GlobalSignals.items_played.connect(_turn_execution)

func _set_fighters(al : Fighter, en : Fighter) -> void:
	ally = al
	enemy = en
	
	ally_side.set_fighter(ally)
	enemy_side.set_fighter(enemy)

func round_start() -> void:
	pass

func _turn_execution(player_hand : Array[Item]) -> void:
	# [ 1 ] Run each of their actions
	## [ 1.1 ] First
	#use_items(enemy, ally)
	
	# [ 1.2 ] Second
	use_items(ally, enemy, player_hand)


func use_items(acting : Fighter, target: Fighter, items : Array[Item]) -> void:
	for item in items:
		item.use_item(ally, enemy)

#func run_actions() -> void:
	#while acting.can_act():
		#var curr : Action = acting._realize_action()
		#match curr.type:
			#Action.Types.SELF_DEBUFF or Action.Types.BUFF:
				#acting.self_buff_debuff(curr)
				#
			#Action.Types.SELF_ATTACK:
				#acting.self_attack(curr)
				#
			#Action.Types.ENEMY_DEBUFF:
				#if curr.stats == Action.Stats.STATE:
					#target.change_state(curr.stateChange)
				#elif curr.stats == Action.Stats.INITIATIVE:
					#target.change_initiative()
				#elif curr.stats == Action.Stats.DEFENSE:
					#target.change_defense(curr.modifier)
				#elif curr.stats == Action.Stats.STRENGTH:
					#target.change_strength(curr.modifier)
