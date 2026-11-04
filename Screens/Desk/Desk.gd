extends Node2D

@onready var player : Player = Player.new($Briefcase)
@onready var entity : CosmicEntity = $CosmicEntity
var manager : RoundManager = RoundManager.new()
