@abstract
class_name Fighter extends Node2D #Classe abstrata Fighter

# define as propriedades da classe Fighter e seus tipos
var life : int # max 50
var strength : int # 0-100 ⇒ as a percentage
var defense : int  # 0-100 ⇒ as a percentage
var initiative : int # 0 or 1 
var energy : int # 5

var max_life : int # this will be used on the init
var ori_strength : int # this is the original strength
var ori_defense : int

var action_queue : ActionQueue
var state : States.Types
var active_buff : Action
var active_debuff : Action
func reset_initiative() -> void:
	initiative = 5
func reset_buffs() -> void:
	active_buff.free()
	active_debuff.free()
	strength = ori_strength
	defense = ori_defense
func reset_state() -> void:
	state = States.Types.IDLE

#use item will not not be abstract anymore
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
	var attack_value : int
	#need to create the attack logic
	
	target.change_life(attack_value)
	
# UNARY OPERATOR
func self_attack(act : Action) -> void: 
	change_life(act.modifier)
func self_debuff(act : Action) -> void:
	match act.stats:
		Action.Stats.STRENGTH:
			change_strength(act.modifier)
		Action.Stats.DEFENSE:
			change_defense(act.modifier)
		Action.Stats.INITIATIVE:
			pass
func self_buff(act : Action) -> void:
	pass

# MODIFIERS
func change_life(modifier : int) -> void:
	var check : int = life + modifier
	if (check >= max_life): life = max_life
	else: life = check
func change_strength(modifier : int ) -> void:
	var check : int = strength + modifier
	if check >= 100:
		strength = 100
	elif check < 0:
		strength = 0
	else:
		strength = check
func change_defense(modifier : int) -> void:
	var check : int = defense + modifier
	if check >= 100:
		defense = 100
	elif check < 0:
		defense = 0
	else:
		defense = check
func change_state(new_state : States.Types) -> void:
	state = new_state
func change_initiative() -> void:
	if initiative == 1:
		initiative = 0
	else:
		initiative = 1

# CHECKERS
func is_Alive() -> bool : return life > 0
func can_act() -> bool: 
	return action_queue.is_there_actions_left()
