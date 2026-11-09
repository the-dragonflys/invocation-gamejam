extends Resource
class_name RoundManager

var arena : Arena
var player : Player
var enemy : CosmicEntity


func _preparation(pl : Player, en : CosmicEntity, aren : Arena) -> void:
	_receive_players(pl, en)
	_receive_arena_ref(aren)
	player.set_fighter_view(arena.ally_side)
	enemy.set_fighter_view(arena.enemy_side)
	pl.reset_energy()
	en.reset_energy()
	
	player._setup()
	enemy._setup()

func _receive_players(pl : Player, en : CosmicEntity):
	player = pl
	enemy = en
func _receive_arena_ref(aren : Arena):
	arena = aren
