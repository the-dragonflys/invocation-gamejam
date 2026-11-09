class_name Player
extends PlayerDef

var active_fighters : Dictionary[int, bool] = {0 : true, 1 : true, 
											   2 : true, 3 : true}


#	OVERRIDEN FUNCTIONS
func _setup() -> void:
	team = team.create_instance()
	GlobalSignals.ally_fighter_died.connect(fighter_died)
	set_fighter(0)
func check_if_lost() -> void:
	if death_counter == 4:
		GlobalSignals.player_lost.emit()
		lost = true


#	FIGHTER RELATED
func fighter_died(idx : int) -> void:
	active_fighters[idx] = false
	death_counter += 1
	check_if_lost()
	if not lost:
		pass
func set_fighter(idx : int) -> void:
	if not active_fighters[idx]:
		return
	
	curr_fighter = team.get_fighter(idx)
	
	update_figher_view()
