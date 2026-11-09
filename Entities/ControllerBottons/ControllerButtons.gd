extends Control
class_name ControllerButtons

signal action_confirmed
signal skipped


func _on_confirm_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		action_confirmed.emit()

func _on_skip_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		skipped.emit()
