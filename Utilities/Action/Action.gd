extends Node
class_name Action

#will use the order of this enum to sort the ActionQueue
## [b]Enum que define os tipos de ação.[/b][br][br]
## São eles:[br]
## [color=lightgreen]SELF_DEBUFF[br]ENEMY_DEBUFF[br]BUFF[br]ATTACK[/color] 
enum Types{ 
	SELF_DEBUFF=0,
	ENEMY_DEBUFF=1,
	BUFF=2,
	ATTACK=3
}

## [b]Enum que define qual atributo será afetado na ação.[/b][br][br]
## São eles:[br]
## [color=lightgreen]NONE[br]LIFE[br]STRENGTH[br]DEFENSE[br]INITIATIVE[br]STATE[/color]
enum Stats{
	NONE=0,
	LIFE=1,
	STRENGTH=2,
	DEFENSE=3,
	INITIATIVE=4,
	STATE=5,
}

var type : Types
var modifier : int
var stats : Stats
var stateChange : States.Types

func _init(t : Types, value : int, s : Stats = Stats.NONE,
		   sChange : States.Types = States.Types.IDLE):
	type = t
	modifier = value
	stats = s
	stateChange = sChange
