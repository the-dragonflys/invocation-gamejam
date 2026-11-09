class_name ItemUI
extends Control

const BASE_STYLEBOX := preload("res://Entities/Item/item_ui_base.tres")
const HOVER_STYLEBOX := preload("res://Entities/Item/item_ui_detailed.tres")
const SELECTED_STYLEBOX := preload("res://Entities/Item/item_ui_selected.tres")

enum ItemStates{
	IDLE = 0,
	HOVER = 1,
	SELECTED = 2,
}

@export var item : Item : set = set_item
@onready var icon : TextureRect = $TextureRect
@onready var panel: Panel = $Panel
var state : ItemStates = ItemStates.IDLE

func set_item(it : Item) -> void:
	if not is_node_ready():
		await ready
	
	item = it.create_instante()
	icon.texture = item.art
	state = ItemStates.IDLE


func _on_gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_mouse_left"):
		if state == ItemStates.HOVER:
			panel.set("theme_override_styles/panel", SELECTED_STYLEBOX)
			state = ItemStates.SELECTED
			#print("its selected")
		elif state == ItemStates.SELECTED:
			panel.set("theme_override_styles/panel", BASE_STYLEBOX)
			state = ItemStates.IDLE
			#print("its not selected")

func _on_mouse_entered() -> void:
	GlobalSignals.item_tooltip_requested.emit(item)
	if state == ItemStates.IDLE:
		state = ItemStates.HOVER
		panel.set("theme_override_styles/panel", HOVER_STYLEBOX)


func _on_mouse_exited() -> void:
	GlobalSignals.tooltip_hide.emit()
	if state != ItemStates.SELECTED:
		state = ItemStates.IDLE
		panel.set("theme_override_styles/panel", BASE_STYLEBOX)
