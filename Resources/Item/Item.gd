class_name Item extends Resource #Classe abstrata para Items

## [b]Enum que define o tipo do item[/b][br][br]
## São eles:[br]
## [color=lightgreen]ATTACK[br]CONTROL[br]BUFF[br]DEBUFF[br]HEAL[/color]
enum Types { #Enum para os tipos de items
	ATTACK = 0, 
	CONTROL = 1, 
	BUFF = 2, 
	DEBUFF = 3, 
	HEAL = 4,
}

#propriedades da classe Item
var item_name: String
var item_typ: Types
var description : String
var actions : Array[Action] = []
var cost : int
@export var item_ref : PackedScene

func check_IsThereActions() -> bool:
	return not actions.is_empty()

func get_action() -> Action:
	var ret : Action
	ret = actions.back()
	actions.pop_back()
	return ret
