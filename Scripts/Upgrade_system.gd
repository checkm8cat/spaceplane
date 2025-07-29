extends Control

@onready var powercell = get_tree().get_nodes_in_group("powercell")




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_visible(false)
	pass # Replace with function body.


func togglesight():
	set_visible(!is_visible)
