extends Area2D

func _on_powercell_body_entered(body: Node2D) -> void:
	queue_free()
	print("hit")
	pass # Replace with function body.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
