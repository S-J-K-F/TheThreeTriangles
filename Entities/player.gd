extends CharacterBody2D

var enemy_inattack_range = false
var enemy_attack_cooldown = true
var health = 100
var player_alive = true

const speed = 100
var current_dir = "none"

func _ready() -> void:
	$AnimatedSprite2D.play("IdleDown")
	

func _physics_process(delta):
	player_movement(delta)
	
	if health <= 0:
		player_alive = false
		health = 0
		print("player has been killed")
		self.queue_free()

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
