class_name Fighter extends Resource #Classe abstrata Fighter

@export var nome : String
@export var max_life : int # this will be used on the init
@export var ori_strength : int # this is the original strength
@export var ori_defense : int
@export var char_ref : PackedScene

# define as propriedades da classe Fighter e seus tipos
var life : int # max 50
var strength : int # 0-200 ⇒ as a percentage
var defense : int  # 0-200 ⇒ as a percentage
var initiative : int = 1 	# 0 or 1 
var energy : int = 5	# 5

var action_queue : ActionQueue = ActionQueue.new()
var state : States.Types = States.Types.IDLE
var active_buff : Action
var active_debuff : Action

var specific_deck : Array[Item] = []	# deck of unique items
var default_deck : Array[Item] = []   	# deck of default items

func setup() -> void:
	life = max_life
	strength = ori_strength
	defense = ori_defense
	
	#still need to define default_deck

# RESETS
func _reset_initiative() -> void:
	initiative = 5
func _reset_buffs() -> void:
	active_buff.free()
	active_debuff.free()
	strength = ori_strength
	defense = ori_defense
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
	percentage = strength / target.defense
	
	attack_value = act.modifier * percentage
	target.change_life(floor(attack_value))
	
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
	life = clampi(life + modifier, 0, max_life)
func change_strength(modifier : int ) -> void:
	strength = clampi(strength + modifier, 0, 200)
func change_defense(modifier : int) -> void:
	defense = clampi(defense + modifier, 0, 200)
func change_state(new_state : States.Types) -> void:
	state = new_state
func change_initiative() -> void:
	initiative = 0 if initiative == 1 else 1

# CHECKERS
func is_alive() -> bool : return life > 0
func can_act() -> bool: 
	return action_queue.is_there_actions_left()
