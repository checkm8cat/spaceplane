extends Node

func update_health(health):
	$Health.text = str(health)


func Display_game_over():
	print("imdead!")
	$Game_over.start()
	$Death.text = str("Game over")
	$Death.show()
	#nothing yet



func _on_game_over_timeout() -> void:
	print("timesup!")
	$Death.hide()
	Engine.time_scale = 1
	pass # Replace with function body.
