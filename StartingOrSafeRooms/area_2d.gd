extends Area2D

while true do
var entered = false

<<<<<<< Updated upstream
func _on_body_entered(body:PhysicsBody2D) -> void:
=======

func _on_body_entered(body:Node2D) -> void:
>>>>>>> Stashed changes
	entered = true


func _on_body_exited(body) -> void:
	entered = false

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_select"):
			get_tree().change_scene_to_file("res://StartingOrSafeRooms/safe_room.tscn")
