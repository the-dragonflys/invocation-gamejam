@abstract
class_name Fighter extends Node2D #Classe abstrata Fighter

# define as propriedades da classe Fighter e seus tipos
var life : int # max 50
var strength : int # 0-100 ⇒ as a percentage
var defense : int  # 0-100 ⇒ as a percentage
var initiative : int # 0 or 1 
var energy : int # 5

var action_queue : ActionQueue
var state : States.Types

#use item will not not be abstract anymore
func use_item(target: Fighter,item: Item) -> void:
	pass

func can_act() -> bool : return action_queue.is_there_actions_left()

func _realize_action() -> Action:
	var ret : Action
	ret = action_queue.get_action()
	return ret

func attack(act : Action, target: Fighter) -> void:
	pass

func change_life(modifier : int) -> void:
	pass

func change_defense(target: Fighter) -> void:
	pass

func change_state(target: Fighter) -> void:
	pass

func is_Alive() -> bool : return life > 0
