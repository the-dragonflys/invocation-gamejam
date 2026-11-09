class_name Player
extends PlayerDef

var active_fighters : Dictionary[int, bool] = {0 : true, 1 : true, 
											   2 : true, 3 : true}


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("letter_k"):
		curr_fighter.change_life(-4000)


#	OVERRIDEN FUNCTIONS
func _setup() -> void:
	team = team.create_instance()
	GlobalSignals.ally_fighter_died.connect(fighter_died)
	GlobalSignals.ally_fighter_choosen.connect(set_fighter)
	set_fighter(0)
func check_if_lost() -> void:
	if death_counter == 4:
		GlobalSignals.player_lost.emit()
		lost = true
func change_energy(modifier : int):
	energy = clampi(energy + modifier, 0, max_energy)
	GlobalSignals.action_points_changed.emit(energy)


#	FIGHTER RELATED
func fighter_died(idx : int) -> void:
	active_fighters[idx] = false
	death_counter += 1
	check_if_lost()
	if not lost:
		await GlobalSignals.ally_fighter_choosen
func set_fighter(idx : int) -> void:
	if not active_fighters[idx]:
		return
	
	curr_fighter = team.get_fighter(idx)
	update_figher_view()
