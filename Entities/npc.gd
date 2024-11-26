extends CharacterBody2D

const speed = 0
var current_state = IDLE

var dir = Vector2.RIGHT
var start_pos

var  is_roaming = true
var is_chatting = false

var player
var player_in_chat_zone = false

enum {
	IDLE,
	NEW_DIR,
	Move
}

func _ready() -> void:
	randomize()
	start_pos = position