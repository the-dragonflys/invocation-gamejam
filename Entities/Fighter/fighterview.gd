extends Node2D
class_name FighterView

@export var fighter : Fighter : set = set_fighter
@onready var sprite2d : Sprite2D = $Sprite2D as Sprite2D

func set_fighter(fight : Fighter):
	fighter = fight.create_instance()
	
	update_fighter()

func update_fighter() -> void:
	if not fighter is Fighter:
		return
	if not is_inside_tree():
		await ready
	
	sprite2d.texture = fighter.art
	sprite2d.apply_scale(Vector2(0.4, 0.4))
	fighter.changes_feedback()
