extends Node2D

@onready var player = get_tree().get_nodes_in_group("player")[0]


func death():
	if(player.health <= 0):
		print(player.health)
		Engine.time_scale = 1 
		get_tree().reload_current_scene()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	death()
	pass


func _on_player_update_health() -> void:
	$Hud.update_health(player.health)
	pass # Replace with function body.
