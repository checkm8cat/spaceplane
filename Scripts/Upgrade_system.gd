extends Control

@onready var powercell = get_tree().get_nodes_in_group("powercell")
var Upgrade1 = randi_range(1, 10)
signal unpause_game


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Upgrade1)
	set_visible(false)
	pass # Replace with function body.


func togglesight():
	set_visible(!is_visible)

func Upgradetime():
	print(Upgrade1)
	if (Upgrade1 <= 5):
		$left.text = str("Speed")
	if (Upgrade1 >= 5):
		$left.text = str("Health")




func _on_button_3_pressed() -> void:
	Upgrade1 = randi_range(1, 10)
	print(Upgrade1)
	togglesight()
	unpause_game.emit()
	pass # Replace with function body.
