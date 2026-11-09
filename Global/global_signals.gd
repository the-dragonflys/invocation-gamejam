extends Node
# in this script, we'll load the event bus

#	used in general
signal tooltip_hide

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
signal action_points_used(current : int)
## FROM Player TO Game
signal player_lost
## FROM TeamUI TO Player
signal ally_fighter_choosen(idx : int)
## FROM CosmicEntity TO Game
signal entity_lost
