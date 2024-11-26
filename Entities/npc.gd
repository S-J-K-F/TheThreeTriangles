extends CharacterBody2D

const speed = 0
var current_state = IDLE

enum {
	IDLE,
	NEW_DIR,
	Move
}