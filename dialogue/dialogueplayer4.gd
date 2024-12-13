extends YapperPlayer

func load_dialogue():
	var file = FileAccess.open("res://dialogue/NPCTALK_4.json", FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	return content
