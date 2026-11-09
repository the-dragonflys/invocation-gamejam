class_name Team
extends Resource

@export var components : Array[Fighter]
var count_deaths : int = 0

func create_instance() -> Team:
	var instance : Team = self.duplicate()
	GlobalSignals.fighter_died.connect(instance.fighter_died)
	return instance

func get_fighter(idx : int) -> Fighter:
	var ret : Fighter
	ret = components[idx]
	return ret

func fighter_died(fighter : Fighter) -> void:
	if not fighter in components:
		return
	
	count_deaths += 1
	components.erase(fighter)
	
	match fighter.alliedto:
		Fighter.AlliedTo.ALLY:
			GlobalSignals.ally_fighter_died.emit(fighter)
		Fighter.AlliedTo.ENEMY:
			GlobalSignals.enemy_fighter_died.emit()
		
