@abstract
class_name PlayerDef extends Node2D

signal fighter_died

@export var Team : Array[Fighter] = []
var hand : Array[Item] = []	#array[Item]
var energy : int = 8
var curr_fighter : Fighter
var itemgiver : ItemGiver = ItemGiver.new()._setup_default()

func _reset_energy() -> void: energy = 8

@abstract
func _setup() -> void

func _choose_item(item : Item):
	pass

func _check_curr_died() -> void:
	if curr_fighter.dead:
		fighter_died.emit()
