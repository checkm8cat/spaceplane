extends Area2D



func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale *= 1.2
	queue_free()
	print("im hit!")
	pass # Replace with function body.
