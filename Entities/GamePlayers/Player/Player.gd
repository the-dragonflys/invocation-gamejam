class_name Player
extends PlayerDef

func _setup() -> void:
	GlobalSignals.ally_fighter_died.connect(fighter_died)

func fighter_died(fighter : Fighter) -> void:
	pass

func set_fighter(idx : int) -> void:
	pass
