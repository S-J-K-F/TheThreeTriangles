extends NonPlayer
func _process(delta):
	if current_state == 0 or current_state == 1:
		$AnimatedSprite2DReal.play("Idle")


	if is_roaming:
		match current_state:
			IDLE:
				pass
			NEW_DIR:
				dir = choose([Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN])
			MOVE: 
				move(delta)
	if Input.is_action_just_pressed("select"):
		print("chatting with npc")
		is_roaming = false
		is_chatting = true
		$AnimatedSprite2DReal.play("Idle")
