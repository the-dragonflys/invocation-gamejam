extends Node2D
class_name Fighter

signal died

@export var nome : String
@export var base : FighterResource

# define as propriedades da classe Fighter e seus tipos
var life : int # max 50
var strength : int # 0-200 ⇒ as a percentage
var defense : int  # 0-200 ⇒ as a percentage
var initiative : int = 1 	# 0 or 1 
	# 5

var action_queue : ActionQueue = ActionQueue.new()
var state : States.Types = States.Types.IDLE
var active_buff : Action
var active_debuff : Action

func setup() -> void:
	life = base.max_life
	strength = base.ori_strength
	defense = base.ori_defense

# RESETS
func _reset_initiative() -> void:
	initiative = 5
func _reset_buffs() -> void:
	active_buff.free()
	active_debuff.free()
	strength = base.ori_strength
	defense = base.ori_defense
func _reset_state() -> void: 
	state = States.Types.IDLE

# OPERATORS
func use_item(item: Item) -> void:
	while item.check_IsThereActions():
		var aux : Action
		aux = item.get_action()
		action_queue._add_action(aux)
	initiative -= item.cost
func _realize_action() -> Action:
	var ret : Action
	ret = action_queue.get_action()
	return ret

# INTERACTIONS
func attack(act : Action, target: Fighter) -> void:
	var attack_value : float
	var percentage : float
	percentage = (strength as float) / (target.defense as float)
	
	attack_value = (act.modifier as float) * percentage
	target.change_life((floor(attack_value) as int))
	
# UNARY OPERATOR
func self_attack(act : Action) -> void: 
	change_life(act.modifier)
func self_buff_debuff(act : Action) -> void:
	match act.stats:
		Action.Stats.STRENGTH:
			change_strength(act.modifier)
		Action.Stats.DEFENSE:
			change_defense(act.modifier)

# MODIFIERS
func change_life(modifier : int) -> void:
	life = clampi(life + modifier, 0, base.max_life)
func change_strength(modifier : int ) -> void:
	strength = clampi(strength + modifier, 0, 200)
func change_defense(modifier : int) -> void:
	defense = clampi(defense + modifier, 0, 200)
func change_state(new_state : States.Types) -> void:
	state = new_state
func change_initiative() -> void:
	initiative = 0 if initiative == 1 else 1

# CHECKERS
func check_died() -> void :
	if life == 0:
		died.emit()
func can_act() -> bool: 
	return action_queue.is_there_actions_left()
