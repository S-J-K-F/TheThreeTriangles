extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true
	print("test")

func _on_body_exited(body):
	entered = false


func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("select"):
			get_tree().change_scene_to_file("res://StartingOrSafeRooms/safe_room_2.tscn")
