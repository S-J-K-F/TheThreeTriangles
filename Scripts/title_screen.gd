extends Control


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Other/main_scene.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
