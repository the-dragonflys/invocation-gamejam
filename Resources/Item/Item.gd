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
@export_group("Visual")
@export var art : Texture

@export_group("Details")
@export var item_name: String
@export var item_typ: Types
@export_multiline var description : String
@export var cost : int

@export_group("Effects")
@export var actions : Array[Action]


func create_instante() -> Item:
	var instance = self.duplicate()
	return instance


#	the item logic will be implemented here now
func use_item(user : Fighter, poss_target : Fighter) -> void:
	for act in actions:
		match act.type:
			Action.Types.ATTACK:
				user.attack(act, poss_target)
			Action.Types.HEAL:
				user.change_life(act.modifier)
			Action.Types.ENEMY_DEBUFF:
				user.apply_modifier(act, poss_target)
			Action.Types.SELF_ATTACK:
				user.self_attack(act)
			Action.Types.SELF_DEBUFF:
				user.self_modifier(act)
