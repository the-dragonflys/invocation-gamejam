@abstract
class_name PlayerDef extends Node2D

var Team : Array[Fighter] = []
var hand : Array[Item] = []	#array[Item]
var energy : int = 8

func _reset_energy() -> void: energy = 5

@abstract
func _setup() -> void
