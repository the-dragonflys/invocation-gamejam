extends Resource
class_name RoundManager

var battle_controller : Arena
var player : Player
var enemy : CosmicEntity


func _preparation(pl : Player, en : CosmicEntity, aren : Arena) -> void:
	_receive_players(pl, en)
	_receive_arena_ref(aren)
	
	player._setup()
	enemy._setup()
	battle_controller._set_fighters(player.curr_fighter, enemy.curr_fighter)
	player.itemgiver._receive_curr_specific_deck(player.curr_fighter.base.specific_deck)

func _gameloop() -> void:
	var player_fighter : Fighter = player.curr_fighter
	var enemy_fighter : Fighter = enemy.curr_fighter
	
	

func _receive_players(pl : Player, en : CosmicEntity):
	player = pl
	enemy = en

func _receive_arena_ref(aren : Arena):
	battle_controller = aren
