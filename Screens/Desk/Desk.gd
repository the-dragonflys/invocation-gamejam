extends Node2D

@onready var player : Player = Player.new($Briefcase)
@onready var entity : CosmicEntity = $CosmicEntity
@onready var arena : Arena = $Arena
var manager : RoundManager = RoundManager.new()
@export var f1 : Fighter
@export var f2 : Fighter

func _ready() -> void:
	manager._preparation(player, entity, arena)
	#arena._set_fighters(f1, f2)
