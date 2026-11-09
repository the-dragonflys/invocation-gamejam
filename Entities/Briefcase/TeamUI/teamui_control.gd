extends Control

var can_choose : bool = false
@onready var active_fighters : Dictionary[int, Control] = {
	0 : $Billy, 1 : $Hop, 2 : $Rock, 3 : $Tesla
}


func _unhandled_input(event: InputEvent) -> void:
	pass

func _enter_tree() -> void:
	GlobalSignals.ally_fighter_died.connect(fighter_died)


func fighter_died(idx : int):
	active_fighters[idx].visible = false
	can_choose = true


func _on_hop_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		if can_choose:
			GlobalSignals.ally_fighter_choosen.emit(1)
			can_choose = false
func _on_rock_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		if can_choose:
			GlobalSignals.ally_fighter_choosen.emit(2)
			can_choose = false
func _on_tesla_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		if can_choose:
			GlobalSignals.ally_fighter_choosen.emit(3)
			can_choose = false
