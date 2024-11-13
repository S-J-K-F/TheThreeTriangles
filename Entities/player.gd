extends CharacterBody2D


@export var speed : float = 225.0



func _physics_process(delta):


	# Movement
	var direction : Vector2 = Input.get_vector("left", "right", "up", "down").normalized()

	if direction:
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()
