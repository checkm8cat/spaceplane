extends Area2D

#Base numbers
var Height = 269
var Width = 519

func respawn():
	#randomed numbers
	var RHeight = randi_range(-Height, Height)
	var RWidth = randi_range(-Width, Width)
	
	global_position = Vector2(RWidth, RHeight)
	print(RHeight," ", RWidth)
	


func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale *= 1.2
	print("time is now ", Engine.time_scale)
	respawn()
