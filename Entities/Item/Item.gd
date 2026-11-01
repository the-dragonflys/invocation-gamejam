@abstract
class_name Item extends Node2D

const it_ty = preload("res://Entities/Item/ItemTypes.gd") #it_ty == item_type who defines the type of the item

var item_name: String;
var item_typ: it_ty; 
#item_typ uses the it_ty class, who has the item type, the buff/debuff type and the state change type
var value_1: int;
var value_2: int;

@abstract
func interact() -> void
