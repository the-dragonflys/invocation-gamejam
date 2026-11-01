extends Node
class_name TurnQueue

var turn_queue : Array

func _init() -> void:
	turn_queue = []

func generate_queue(ally : Fighter, enemy : Fighter) -> void:
	turn_queue.append(enemy)
	turn_queue.append(ally)
	if (ally.initiative == enemy.initiative):
		return
	else:
		turn_queue.sort_custom(func(e1, e2): 
			return e1.initiative > e2.initiative)

func anyone_left() -> bool : return not turn_queue.is_empty()

func get_whos_turn() -> Fighter:
	var ret : Fighter
	ret = turn_queue.front()
	turn_queue.pop_front()
	return ret
