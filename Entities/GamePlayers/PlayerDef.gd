class_name PlayerDef extends Node2D

@export var team : Team
var energy : int = 6
var curr_fighter : Fighter
var fighterviewer : FighterView : set = set_fighter_view

func set_fighter_view(fighter_view : FighterView) -> void:
	if not fighter_view is FighterView:
		return
	
	fighterviewer = fighter_view

#	OVERRIDE FUNCTIONS
func _setup() -> void:
	pass
func set_fighter(idx : int) -> void:
	pass

#@export var team : Array[Fighter] = []
#var hand : Array[Item] = []	#array[Item]
#var energy : int = 8
#var curr_fighter : Fighter
#var itemgiver : ItemGiver = ItemGiver.new()._setup_default()
#
#func _reset_energy() -> void: energy = 8
#
#@abstract
#func _setup() -> void
#
#func _choose_item(item : Item):
	#pass
#
#func _check_curr_died() -> void:
	#if curr_fighter.dead:
		#fighter_died.emit()
