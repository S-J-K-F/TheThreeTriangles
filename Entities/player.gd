extends CharacterBody2D


const speed = 100
var current_dir = "none"

var dash = 500.0
var tween: Tween
var dash_velocity = 0.0
var input_axis


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

func dashFunc():
	if Input.is_action_just_pressed("shift"):
		dash_velocity = dash
		if tween:
			tween.stop()
		tween = create_tween()
		tween.tween_property(self, "dash_velocity", 0, 0.2).set_ease(Tween.EASE_OUT)

func player_movement_two(delta):
	if input_axis:
		velocity.x = input_axis * (speed + dash_velocity)
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
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
