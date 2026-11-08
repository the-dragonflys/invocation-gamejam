class_name GlobalEvents
extends Node
# in this script, we'll load the event bus

#	related to the items
signal items_played()
signal item_tooltip_requested(item : Item)
signal tooltip_hide

#	related to the Fighter
signal fighter_hit(fighter : Fighter) # will need to rethink this
signal fighter_died(fighter : Fighter) # will need to rethink this
signal modifier_applied(fighter : Fighter) # will need to rethink this
