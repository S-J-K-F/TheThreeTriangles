extends Node2D

@onready var transition = $Transition
var starting_room = preload("res://StartingOrSafeRooms/starting_room.tscn")

func on_play_pressed():
	transition.play("fade_out")

func _on_transition_animation_finished(anim_name):
	get_tree().change_scene_to_packed(starting_room)
