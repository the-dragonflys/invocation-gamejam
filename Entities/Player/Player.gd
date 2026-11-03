extends Node
class_name Player

var Team : Array 	#array[Fighter]
var Items : Array	#array[Item]

func _init() -> void:
	var aux : PackedScene
	
	# [ 1 ] mount the Team
	Team = []
	
	aux = preload("res://Entities/Fighter/Earthlings/BillyBrute/BillyBrute.tscn")
	Team.push_back(aux.instantiate())
	
	aux = preload("res://Entities/Fighter/Earthlings/HopperTank/HopperTank.tscn")
	Team.push_back(aux.instantiate())
	
	aux = preload("res://Entities/Fighter/Earthlings/Rocky/Rocky.tscn")
	Team.push_back(aux.instantiate())
	
	aux = preload("res://Entities/Fighter/Earthlings/TeslaMage/TeslaMage.tscn")
	Team.push_back(aux.instantiate())
	
	
