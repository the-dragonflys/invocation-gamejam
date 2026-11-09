extends Resource
class_name Action

#will use the order of this enum to sort the ActionQueue
## [b]Enum que define os tipos de ação.[/b][br][br]
## São eles:[br]
## [color=lightgreen]SELF_DEBUFF[br]ENEMY_DEBUFF[br]BUFF[br]ATTACK[/color] 
enum Types{ 
	SELF_DEBUFF=0,
	ENEMY_DEBUFF=1,
	BUFF=2,
	ATTACK=3,
	SELF_ATTACK=4,
	HEAL=5,
}

## [b]Enum que define qual atributo será afetado na ação.[/b][br][br]
## São eles:[br]
## [color=lightgreen]NONE[br]LIFE[br]STRENGTH[br]DEFENSE[br]INITIATIVE[br]STATE[/color]
enum BuffAffects{
	NONE=0,
	STRENGTH=1,
	DEFENSE=2,
	INITIATIVE=3,
	STATE=4,
}


@export var type : Types
@export var modifier : int
@export var stats : BuffAffects
@export var stateChange : States.Types
