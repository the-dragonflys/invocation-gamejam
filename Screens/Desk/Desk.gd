extends Node2D

@onready var player : Player = Player.new($Briefcase)
@onready var entity : CosmicEntity = $CosmicEntity
@onready var arena : Arena = $Arena
var manager : RoundManager = RoundManager.new()

func _ready() -> void:
	manager._preparation(player, entity, arena)
