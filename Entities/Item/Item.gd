@abstract
class_name Item extends Node2D #Classe abstrata para Items

## [b]Enum que define o tipo do item[/b][br][br]
## São eles:[br]
## [color=lightgreen]ATTACK[br]CONTROL[br]BUFF[br]DEBUFF[br]HEAL[/color]
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
var description : String
var actions : Array
var cost : int

func check_IsThereActions() -> bool:
	return not actions.is_empty()

func get_action() -> Action:
	var ret : Action
	ret = actions.front()
	actions.pop_front()
	return ret
