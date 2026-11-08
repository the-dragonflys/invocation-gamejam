extends Node2D

@onready var fighterview : FighterView = $FighterView
@export var fighter : Fighter 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fighterview.set_fighter(fighter)
	
	print_data()

func print_data() -> void:
	print(fighter.nome)
	print(fighter.life)
	print(fighter.defense)
	print(fighter.strength)
