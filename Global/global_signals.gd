extends Node
# in this script, we'll load the event bus

#	used in general
signal tooltip_hide
## FROM dunnoyet TO Game AND CutscenePlayer
signal play_credits
## FROM CutscenePlayer TO Game
signal end_game
## FROM Desk TO DialogSoundEffect
signal play_dialog_effect
## FROM Desk TO CosmicEntity
signal game_started

#	related to the items
signal items_played()
signal item_tooltip_requested(item : Item)

#	related to the Fighter
## FROM Fighter TO PVLabel AND Monitor
signal ally_stats_changed(fighter : Fighter) 
## FROM Fighter TO Monitor
signal enemy_stats_changed(fighter : Fighter)
## FROM Fighter TO Team
signal fighter_died(fighter : Fighter) 
## FROM Team TO Player AND TeamUI
signal ally_fighter_died(idx : int)
## FROM Team TO CosmicEntity
signal enemy_fighter_died
## FROM dunno yet, actually
signal fighter_tooltip_requested(fighter : Fighter)

#	related to the player
## FROM Player TO PALabel
signal action_points_changed(current : int)
## FROM Player TO Game
signal player_lost
## FROM TeamUI TO Player
signal ally_fighter_choosen(idx : int)
## FROM CosmicEntity TO Game
signal entity_lost

#	related to the buttons
## FROM ControllerButtons TO RoundManager
signal confirmation_button_pressed
## FROM ControllerButtons TO RoundManager
signal skip_button_pressed
