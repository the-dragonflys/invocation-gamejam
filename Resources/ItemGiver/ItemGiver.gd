extends Resource
class_name ItemGiver

var complete_deck : Array[Item]

var default_deck : Array[Item]
var specific_deck : Array[Item]

func _setup_default() -> ItemGiver:
	return self

func _receive_curr_specific_deck(clas : Array[Item]) -> void:
	specific_deck = clas

func _complete() -> void:
	return

func _shuffle() -> void:
	return

func _receive_hand() -> Array[Item]:
	var hand : Array[Item]
	
	return hand
