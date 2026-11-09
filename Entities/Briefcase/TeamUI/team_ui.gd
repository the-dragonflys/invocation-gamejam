extends Control

@onready var bkgd_sprite : AnimatedSprite2D = $Background

func _enter_tree() -> void:
	GlobalSignals.ally_fighter_choosen.connect(change_background)

func change_background(idx : int) -> void:
	if idx == 1:
		bkgd_sprite.play("hop")
	elif idx == 2:
		bkgd_sprite.play("rock")
	elif idx == 3:
		bkgd_sprite.play("tesla")
