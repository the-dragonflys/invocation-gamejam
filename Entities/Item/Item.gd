@abstract
class_name Item extends Node2D #Classe abstrata para Items

enum Types { #Enum para os tipos de items
	ATTACK = 0, 
	CONTROL = 1, 
	BUFF = 2, 
	DEBUFF = 3, 
	HEAL = 4,
	ATTACK_WBUFF = 5,
	ATTACK_WSTUN = 6, 
	ATTACK_WDEBUFF = 7, 
	ATTACK_WHEAL = 8,
	CONTROL_WSTATE = 9, 
	BUFF_WSTATE = 10, 
	DOUBLE_DEBUFF = 11,
}

#propriedades da classe Item
var item_name: String
var item_typ: Types
var actions : Array
var cost : int

@abstract
func interact() -> void
