extends Node2D

@onready var player : Player = $GamePlayers/Player
@onready var entity : CosmicEntity = $GamePlayers/CosmicEntity
@onready var arena : Arena = $Arena
@onready var dial : Dialogue = $Dialogue
@onready var briefcase : Briefcase = $Briefcase
@onready var timer : Timer = $Timer
var can_move_camera : bool = false
var change_dialogue : bool = false
var manager : RoundManager = RoundManager.new()

func _ready() -> void:
	await $Background.animation_finished

func _on_background_animation_finished() -> void:
	first_dialogue()

func dialogue_timer() -> void:
	change_dialogue = true
	timer.start()

func first_dialogue() -> void:
	timer.timeout.connect(dialogue_timer)
	
	var fd : DialogPack = preload("res://Objects/DialogPack/first_dialogue.tres")
	dial.visible = true
	timer.start()
	for dialog in fd.dialogs:
		if not change_dialogue:
			await timer.timeout
		dial.set_dialog(dialog)
		change_dialogue = false
	_start()

func _start() -> void:
	$Soundtrack.play()
	$GamePlayers.visible = true
	$Arena.visible = true
	GlobalSignals.game_started.emit()
	manager._preparation(player, entity, arena)


	
