extends CharacterBody2D

var speed = 125
@onready var player = get_tree().get_nodes_in_group("player")[0]



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var direction = (player.position - position).normalized()
	velocity = direction * speed
	move_and_slide()
