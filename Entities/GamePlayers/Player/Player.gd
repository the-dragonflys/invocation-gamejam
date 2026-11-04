extends PlayerDef
class_name Player

var briefcase : Briefcase

func _init(bf_ref : Briefcase) -> void: briefcase = bf_ref

func _setup() -> void:
	Team.set(0, HopperTank.new())
	Team.set(1, BillyBrute.new())
	Team.set(2, Rocky.new())
	Team.set(3, TeslaMage.new())
	
	curr_fighter = Team[1]
	
