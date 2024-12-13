extends CharacterBody2D

var enemy_inattack_range = false
var enemy_attack_cooldown = true
var health = 200
var player_alive = true

var attack_ip = false




func _ready() -> void:
	$AnimatedSprite2D.play("IdleDown")
	
var speed = 100
var max_speed = 100
var sprint_speed = 200
var current_dir = "none"



func _physics_process(delta):
	player_movement(delta)
	enemy_attack()
	attack()
	
	if health <= 0:
		player_alive = false
		health = 0
		print("player has been killed")
		self.queue_free()

func player_movement(delta):
	if Input.is_action_pressed("shift"):
		speed = sprint_speed
	else:
		speed = max_speed

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
			if attack_ip == false:
				anim.play("IdleRight")
	if dir == "left":
		if movement == 1:
			anim.play("WalkLeft")
		elif movement == 0:
			if attack_ip == false:
				anim.play("IdleLeft")
	if dir == "down":
		if movement == 1:
			anim.play("WalkDown")
		elif movement == 0:
			if attack_ip == false:
				anim.play("IdleDown")
	if dir == "up":
		if movement == 1:
			anim.play("WalkUp")
		elif movement == 0:
			if attack_ip == false:
				anim.play("IdleUp")

func player():
	pass
	
func _on_player_hitbox_body_entered(body):
	if body.has_method("enemy"):
		enemy_inattack_range = true
		
func _on_player_hitbox_body_exited(body):
	if body.has_method("enemy"):
		enemy_inattack_range = false
		
func enemy_attack():
	if enemy_inattack_range and enemy_attack_cooldown == true:
		health = health - 20
		enemy_attack_cooldown = false
		$attack_cooldown.start()
		print(health)
		
func _on_attack_cooldown_timeout():
		enemy_attack_cooldown = true
		
func attack():
	var dir = current_dir
	
	if Input.is_action_just_pressed("attack"):
		global.player_current_attack = true
		attack_ip = true
		if dir == "right":
			$deal_attack_timer.start()
		if dir == "left":
			$deal_attack_timer.start()
		if dir == "down":
			$deal_attack_timer.start()
		if dir == "up":
			$deal_attack_timer.start()

func _on_deal_attack_timer_timeout():
	$deal_attackz_timer.stop()
	global.player_current_attack = false
	attack_ip = false
	
