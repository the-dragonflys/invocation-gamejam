extends Control
class_name Briefcase

@export var slots : Array[Control]
var items_exposed : Array[Item]

func _get_hand(hand : Array[Item]) -> void:
	items_exposed = hand

func _expose_hand() -> void:
	var iter : int = 0
	
	for slot in slots:
		for filho in slot.get_children():
			filho.queue_free()
	
		if not items_exposed.is_empty():
			var item = items_exposed[iter]
			iter += 1
			slot.add_child(item.item_ref.instantiate())
