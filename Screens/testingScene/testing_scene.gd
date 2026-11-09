extends Node2D

@onready var entity : CosmicEntity = $CosmicEntity as CosmicEntity
@onready var viewer : FighterView = $Arena.enemy_side as FighterView

func _ready() -> void:
	entity._setup()
	entity.set_fighter_view(viewer)
	entity.set_fighter()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		entity.curr_fighter.change_life(-4000)
		print("clicked")
