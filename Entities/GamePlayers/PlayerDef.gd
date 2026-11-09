class_name PlayerDef extends Node2D

@export var team : Team
var energy : int = 6
var curr_fighter : Fighter
var fighterviewer : FighterView : set = set_fighter_view
var death_counter : int = 0
var lost : bool = false


#	OVERRIDE FUNCTIONS
func _setup() -> void:
	pass
func check_if_lost() -> void:
	pass

#	FIGHTER_VIEW RELATED
func set_fighter_view(fighter_view : FighterView) -> void:
	if not fighter_view is FighterView:
		return
	
	fighterviewer = fighter_view
func update_figher_view() -> void:
	fighterviewer.set_fighter(curr_fighter)




#var hand : Array[Item] = []	#array[Item]
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
