extends Camera2D

var in_items : bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	in_items = false;
	position.y -= 1080
	pass

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_down"):
		position.y += 1080
	if Input.is_action_just_pressed("ui_up"):
		position.y -= 1080
