extends CanvasLayer

export(String, FILE, "*.json") var d_file

var dialogue = []



func _ready() -> void:
	start():
func start():
	dialogue = load_dialogue()

	$NinePatchRect/Name.text = dialogue[0]['name']
	$NinePatchRect/Name.text = dialogue[0]['name']