class_name Fighter extends Resource #Classe abstrata Fighter

enum AlliedTo{
	ALLY = 0,
	ENEMY,
}

@export_group("Base Details")
@export var nome : String
@export var m_class : FighterClass
@export var alliedto : AlliedTo
@export var art : Texture
@export var specific_deck : ItemDeck

#atributes that'll change during game
#define as propriedades da classe Fighter e seus tipos
var life : int # max 50
var strength : int # 0-200 ⇒ as a percentage
var defense : int  # 0-200 ⇒ as a percentage
var state : States.Types
var active_buff : Action
var active_debuff : Action


#CREATOR
func create_instance() -> Fighter:
	var instance : Fighter = self.duplicate()
	instance.life = m_class.max_life
	instance.strength = m_class.ori_strength
	instance.defense = m_class.ori_defense
	instance._reset_state()
	instance.changes_feedback()
	return instance

#RESETERS
func _reset_modifiers() -> void:
	if active_buff:
		active_buff.free()
	if active_debuff:
		active_debuff.free()
	strength = m_class.ori_strength
	defense = m_class.ori_defense
	changes_feedback()
func _reset_state() -> void:
	state = States.Types.IDLE


#ITEM RELATED
func use_item(item: Item) -> void:
	pass
	#while item.check_IsThereActions():
		#var aux : Action
		#aux = item.get_action()
		#action_queue._add_action(aux)


#INTERACTIONS
func attack(act : Action, target: Fighter) -> void: # will need to change this
	var attack_value : float
	var percentage : float
	percentage = (strength as float) / (target.defense as float)
	
	attack_value = (act.modifier as float) * percentage
	target.change_life((floor(attack_value) as int))
func self_attack(act : Action) -> void: 
	change_life(act.modifier)
func apply_modifier(act : Action, target : Fighter) -> void:
	match act.stats:
		Action.BuffAffects.STRENGTH:
			target.change_strength(act.modifier)
		Action.BuffAffects.DEFENSE:
			target.change_defense(act.modifier)
func self_modifier(act : Action) -> void:
	apply_modifier(act, self)

# MODIFIERS
func change_life(modifier : int) -> void:
	life = clampi(life + modifier, 0, m_class.max_life)
	changes_feedback()
func change_strength(modifier : int ) -> void:
	strength = clampi(strength + modifier, 0, 200)
	changes_feedback()
func change_defense(modifier : int) -> void:
	defense = clampi(defense + modifier, 0, 200)
	changes_feedback()
func change_state(new_state : States.Types) -> void:
	if not new_state in States.Types:
		return
	state = new_state
	changes_feedback()


# CHECKERS
func check_died() -> void:
	if life == 0:
		GlobalSignals.fighter_died.emit(self)
		print(nome)
		print("died")
func can_act() -> bool: 
	if state == States.Types.STUNNED or state == States.Types.PATIENT:
		return false
	return true


# FEEDBACK
func changes_feedback() -> void:
	match alliedto:
		AlliedTo.ALLY:
			GlobalSignals.ally_stats_changed.emit(self)
		AlliedTo.ENEMY:
			GlobalSignals.enemy_stats_changed.emit(self)
	
	check_died()
