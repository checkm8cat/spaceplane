extends Area2D
#Base numbers
var Height = 269
var Width = 519
var collected = 0 
signal upgrade_ready

func respawn():
	#randomed numbers
	var RHeight = randi_range(-Height, Height)
	var RWidth = randi_range(-Width, Width)
	
	global_position = Vector2(RWidth, RHeight)
	print(RHeight," ", RWidth)
	


func _on_body_entered(body: Node2D) -> void:
	collected += 1
	print(collected)
	if(collected == 3):
		upgrade_ready.emit()
	respawn()
