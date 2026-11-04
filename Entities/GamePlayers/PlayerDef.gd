@abstract
class_name PlayerDef extends Node2D

signal fighter_died

var Team : Dictionary[int, Fighter] = {}
var hand : Array[Item] = []	#array[Item]
var energy : int = 8
var curr_fighter : Fighter
var itemgiver : ItemGiver

func _reset_energy() -> void: energy = 5

@abstract
func _setup() -> void

func _check_curr_died() -> void:
	if curr_fighter.dead:
		fighter_died.emit()
