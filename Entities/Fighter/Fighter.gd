extends Node2D
class_name Fighter

signal died

@export var stats : FighterStats



# OPERATORS
func use_item(item: Item) -> void:
	while item.check_IsThereActions():
		var aux : Action
		aux = item.get_action()
		action_queue._add_action(aux)
func _realize_action() -> Action:
	var ret : Action
	ret = action_queue.get_action()
	return ret

# INTERACTIONS

	
# UNARY OPERATOR



# CHECKERS
func check_died() -> void:
	if life == 0:
		died.emit()
func can_act() -> bool: 
	return action_queue.is_there_actions_left()
