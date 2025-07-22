extends CharacterBody2D

@export var health = 3
var down = Vector2 (0, 1)
var up = Vector2 (0, -1)
var left = Vector2 (-1, 0)
var right = Vector2 (1, 0)
var move_direction : Vector2
var can_move = true
var game_started = false
@export var speed = 200



func get_input():
	if can_move:
		if Input.is_action_just_pressed("Down"):
			move_direction = down
			can_move = false

		if Input.is_action_just_pressed("Left"):
			move_direction = left
			can_move = false

		if Input.is_action_just_pressed("Right"):
			move_direction = right
			can_move = false

		if Input.is_action_just_pressed("Up"):
			move_direction = up
			can_move = false

		if not game_started:
			start_game()

func _physics_process(delta):
	get_input()
	move_and_slide()

func start_game():
	game_started = true
	$Move_timer.start()

func _on_timer_timeout() -> void:
	velocity = move_direction * speed
	can_move = true 
