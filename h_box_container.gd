extends HBoxContainer

enum MODES {simple, empty, partial}

var heart_full = preload("res://assets/hud_heartFull.png")
var heart_empty = preload("res://assets/hud_heartEmpty.png")
var heart_half = preload("res://assets/hud_heartHalf.png")

export (MODES) var mode = MODES.simple

func update_health(value):
	match mode:
		MODES.simple:
			update_simple(value)
		MODES.empty:
			update_empty(value)
		MODES.partial:
			update_partial(value)
