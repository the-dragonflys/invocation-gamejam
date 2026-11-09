extends Node2D

@onready var player : Player = $GamePlayers/Player
@onready var entity : CosmicEntity = $GamePlayers/CosmicEntity
@onready var arena : Arena = $Arena
var manager : RoundManager = RoundManager.new()

func _ready() -> void:
	manager._preparation(player, entity, arena)
	#arena._set_fighters(f1, f2)
