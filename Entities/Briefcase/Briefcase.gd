extends Control
class_name Briefcase

@export var slots : Array[ItemUI]
var items_exposed : Array[Item]

func _get_hand(hand : Array[Item]) -> void:
	items_exposed = hand
	_expose_hand()

func _expose_hand() -> void:
	for slot in slots:
		if not items_exposed.is_empty():
			var item = items_exposed[items_exposed.pop_back()]
			slot.set_item(item)


#func _on_controller_buttons_action_confirmed() -> void:
	##var items_selected = Array[Item]
	#for slot in slots:
		#if slot.state == ItemUI.ItemStates.SELECTED:
			#items_selected.append(slot.item)
	#
	#GlobalSignals.items_played.emit(items_selected)
