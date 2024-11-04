extends CharacterBody2D

onready var animated_sprite : AnimatedSprite = $AnimatedSprite

export var move_speed : = 250.0

func _physics_process(delta: float) -> void:
	var motion : = Vector2()
	motion.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	motion.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")

	update_animation(motion)

	func update_animation(motion: Vector2) -> void:
		var animation = "idle"
		pass
