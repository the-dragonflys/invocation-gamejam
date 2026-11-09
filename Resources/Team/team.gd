class_name Team
extends Resource

@export var components : Array[Fighter]
var curr_idx : int

func create_instance() -> Team:
	var instance : Team = self.duplicate()
	GlobalSignals.fighter_died.connect(instance.fighter_died)
	return instance

func get_fighter(idx : int) -> Fighter:
	var ret : Fighter
	curr_idx = idx
	ret = components[idx]
	return ret

func fighter_died(fighter : Fighter) -> void:
	if not fighter in components:
		return
	
	match fighter.alliedto:
		Fighter.AlliedTo.ALLY:
			GlobalSignals.ally_fighter_died.emit(curr_idx)
		Fighter.AlliedTo.ENEMY:
			GlobalSignals.enemy_fighter_died.emit()
		
