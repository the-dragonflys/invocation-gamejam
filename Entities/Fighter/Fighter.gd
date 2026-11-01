@abstract
class_name Fighter extends Node2D

const States = preload("res://Utilities/FighterStates/States.gd")
const Status = preload("res://Utilities/FighterStates/StatChange.gd")

var life : int;
var damage : int;
var defense : int;
var status: Status;
var state: States;

@abstract
func use_item(Fighter, Item) -> void

@abstract
func attack(Fighter) -> void

@abstract
func change_life(Fighter) -> void

@abstract
func change_defense(Fighter) -> void

@abstract
func change_damage(Fighter) -> void

@abstract
func change_state(Fighter) -> void

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
