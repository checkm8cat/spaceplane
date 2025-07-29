extends Node2D

@onready var player = get_tree().get_nodes_in_group("player")[0]
@onready var hud = get_tree().get_nodes_in_group("Hud")




func show_upgrade_visibility():
		get_tree().paused = !get_tree().paused
		$Upgrades.set_visible(true)







func death():
	if(player.health <= 0):
		player.health = 4099
		Engine.time_scale = 0.5
		$Hud.Display_game_over()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("Pause"):
		pause()
	
	death()
	pass


func _on_player_update_health() -> void:
	$Hud.update_health(player.health)
	pass # Replace with function body.




func _on_game_over_timeout() -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.


func pause():
	get_tree().paused = !get_tree().paused
	


func _on_powercell_upgrade_ready() -> void:
	show_upgrade_visibility()
	pass # Replace with function body.
