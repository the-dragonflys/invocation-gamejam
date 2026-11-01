extends Node
class_name ActionQueue

var action_queue : Array

func _init() -> void:
	action_queue = []

func _add_action(a : Action) -> void:
	action_queue.push_back(a)

func _prepare_to_act() -> void:
	action_queue.sort_custom(
		func (a, b) : return a.Action.Types > b.Action.Types)

func is_there_actions_left() -> bool:
	return not action_queue.is_empty()

func get_action() -> Action:
	var ret : Action
	ret = action_queue.back()
	action_queue.pop_back()
	return ret
