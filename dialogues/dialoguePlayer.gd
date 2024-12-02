extends CanvasLayer

export(String, FILE, "*.json") var d_file

var dialogue = []



func _ready() -> void:
	start()
func start():
	dialogue = load_dialogue()

	$NinePatchRect/Name.text = dialogue[0]['name']
	$NinePatchRect/Name.text = dialogue[0]['text']

func load_dialogue():
	var file = File.new()
	if file.file_exists(d_file):
		file.open(d-file, file.Read)
		return parse_json(file.get_as_text())
