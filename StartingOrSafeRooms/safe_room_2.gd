extends Node2D


func _on_previous_scene_pressed():
	SceneTransition.load_scene("res://StartingOrSafeRooms/safe_room.tsc")
	#get_tree().change_scene_to_file("res://StartingOrSafeRooms/safe_room_2.tscn")
