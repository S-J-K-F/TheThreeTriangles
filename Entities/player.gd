extends CharacterBody2D


const speed = 200
var current_dir = "none"

func _physics_process(delta):
	player_movement(delta)

func player_movement(delta):

	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_anim(1)
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_anim(1)
		velocity.x = 0
		velocity.y = speed
	elif Input.is_action_pressed("ui_up"):
		current_dir = "up"
		play_anim(1)
		velocity.x = 0
		velocity.y = -speed
	else:
		play_anim(0)
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
	if dir == "left":
		if movement == 1:
			anim.play("WalkLeft")
		elif movement == 0:
			anim.play("IdleLeft")
	if dir == "down":
		if movement == 1:
			anim.play("WalkDown")
		elif movement == 0:
			anim.play("IdleDown")
	if dir == "up":
		if movement == 1:
			anim.play("WalkUp")
		elif movement == 0:
			anim.play("IdleUp")



func _on_area_2d_body_entered(body):
	if body.is_in_group("triangles"):
		body.Collect()
