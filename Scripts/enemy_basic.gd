extends CharacterBody2D

var speed = 125
@onready var player = get_tree().get_nodes_in_group("player")[0]



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = (player.position - position).normalized()
	velocity = direction * speed
	move_and_slide()


func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if(body.name.contains("Enemy")): return
	print("haha touched you")
	queue_free()
	pass # Replace with function body.
