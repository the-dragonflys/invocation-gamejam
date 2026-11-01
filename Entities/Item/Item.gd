@abstract
class_name Item extends Node2D #Classe abstrata para Items

#propriedades da classe Item
var item_name: String;
var item_typ: ItemType;
var value_1: int;
var value_2: int;

@abstract
func interact() -> void
