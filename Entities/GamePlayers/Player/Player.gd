extends PlayerDef
class_name Player

var briefcase : Briefcase

func _init(bf_ref : Briefcase) -> void: briefcase = bf_ref

func _setup() -> void:
	curr_fighter = Team.get(1)
