extends Node2D

@onready var transition = $Transition

func on_play_pressed():
	transition.play("fade_out")
