extends Camera2D

enum sides{
	central = 0,
	left,
	right
}

var enemy_on_screen : bool
var looking : sides

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enemy_on_screen = true
	looking = sides.central

# Called when an Input is detected
func _input(event: InputEvent) -> void:
	if enemy_on_screen:
		match looking:
			sides.central:
				if event.is_action_pressed("ui_down"):
					enemy_on_screen = false
					position.y += 2160
				if event.is_action_pressed("ui_left"):
					position.x -= 640
					looking = sides.left
				if event.is_action_pressed("ui_right"):
					position.x += 640
					looking = sides.right
			sides.left:
				if event.is_action_pressed("ui_right"):
					position.x += 640
					looking = sides.central
			sides.right:
				if event.is_action_pressed("ui_left"):
					position.x -= 640
					looking = sides.central
	else:
		if event.is_action_pressed("ui_up"):
			position.y -= 2160
			enemy_on_screen = true
