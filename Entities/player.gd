extends CharacterBody2D


const speed = 100
var current_dir = "none"

func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):

	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		velocity.x = 0
		velocity.y = -speed
	else:
		velocity.x = 0
		velocity.y = 0
	move_and_slide()

func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D

	if dir == "right":
		if movement == 1:
			anim.play("WalkRight")
		elif movement == 0:
			anim.play("IdleRight")

