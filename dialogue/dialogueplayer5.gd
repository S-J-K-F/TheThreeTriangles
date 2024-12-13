extends YapperPlayer

func load_dialogue():
	var file = FileAccess.open("res://dialogue/NPCTALK_5.json", FileAccess.READ)
	var content = JSON.parse_string(file.get_as_text())
	return content
