extends PlayerDef
class_name CosmicEntity

var itemgiver : ItemGiver

func _setup() -> void:
	Team.push_back(BirglyBruiter.new())
	Team.push_back(BrizockTrocky.new())
	Team.push_back(ZibZibZub.new())
	Team.push_back(ZorlobGord.new())
