extends Node
class_name Battle

var ally : Fighter
var enemy : Fighter

var curr_one : Fighter

var TurnManager : TurnQueue

func _init(al : Fighter, en : Fighter) -> void:
	ally = al
	enemy = en

func round_start() -> void:
	TurnManager.generate_queue(ally, enemy)

func gameloop() -> void:
	if (TurnManager.anyone_left()):
		curr_one = TurnManager.get_whos_turn()
