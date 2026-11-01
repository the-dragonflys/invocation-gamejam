@abstract
class_name Fighter extends Node2D #Classe abstrata Fighter

# define as propriedades da classe Fighter e seus tipos
var life : int
var strength : int
var defense : int
var initiative : int
var energy : int

var action_queue : ActionQueue
var state : States.Types

#use item will not not be abstract anymore
func use_item(target: Fighter,item: Item) -> void:
	pass

@abstract
func attack(target: Fighter) -> void

@abstract
func change_life(target: Fighter) -> void

@abstract
func change_defense(target: Fighter) -> void

@abstract
func change_state(target: Fighter) -> void
