extends Node2D
class_name Fighter

@export var stats : FighterStats

# OPERATORS
func use_item(item: Item) -> void:
	pass
	#while item.check_IsThereActions():
		#var aux : Action
		#aux = item.get_action()
		#action_queue._add_action(aux)
func _realize_action() -> Action:
	var ret : Action
	#ret = action_queue.get_action()
	return ret
