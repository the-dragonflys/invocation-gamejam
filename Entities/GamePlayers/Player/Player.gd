extends PlayerDef
class_name Player

var briefcase : Briefcase

func _init(bf_ref : Briefcase) -> void: briefcase = bf_ref

func _setup() -> void:
	Team.push_back(HopperTank.new())
	Team.push_back(BillyBrute.new())
	Team.push_back(Rocky.new())
	Team.push_back(TeslaMage.new())
	
