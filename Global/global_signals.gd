extends Node
# in this script, we'll load the event bus

#	used in general
signal tooltip_hide

#	related to the items
signal items_played()
signal item_tooltip_requested(item : Item)

#	related to the Fighter
signal ally_stats_changed(fighter : Fighter) 
signal enemy_stats_changed(fighter : Fighter)
signal fighter_died(fighter : Fighter)
signal ally_fighter_died(fighter : Fighter)
signal enemy_fighter_died
signal fighter_tooltip_requested(fighter : Fighter)

#	related to the player
signal action_points_used(current : int)
