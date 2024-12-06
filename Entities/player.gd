extends CharacterBody2D


var speed = 100
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
	#Running
	elif Input.is_action_pressed("ui_right") && Input.is_action_pressed("shift"):
		current_dir = "right"
		play_anim(1)
		velocity.x = speed * 2
		velocity.y = 0
	elif Input.is_action_pressed("ui_left") && Input.is_action_pressed("shift"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -speed * -2
		velocity.y = 0
	elif Input.is_action_pressed("ui_down") && Input.is_action_pressed("shift"):
		current_dir = "down"
		play_anim(1)
		velocity.x = 0
		velocity.y = speed * 2
	elif Input.is_action_pressed("ui_up") && Input.is_action_pressed("shift"):
		current_dir = "up"
		play_anim(1)
		velocity.x = 0
		velocity.y = -speed * -2
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
