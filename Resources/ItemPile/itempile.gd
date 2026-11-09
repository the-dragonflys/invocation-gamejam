class_name ItemPile
extends Resource

var complete_deck : Array[Item]
var count : int = 0

var default_deck : ItemDeck = load("res://Objects/Decks/default.tres")
var specific_deck : ItemDeck : set = set_specific

func create_instance() -> ItemPile:
	var instance = self.duplicate()
	return instance

func receive_hand() -> Array[Item]:
	count += 6
	var ret : Array[Item] = []
	for i in range(6):
		ret.append(complete_deck.pop_back())
	if count == 32:
		create_pile()
	return ret

func create_pile() -> void:
	for i in range(3):
		for j in range(10):
			var item : Item = default_deck.items[j]
			complete_deck.append(item)
	complete_deck.shuffle()

func set_specific(id : ItemDeck):
	specific_deck = id
	create_pile()
