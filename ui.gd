extends CanvasLayer
class_name UI

@onready var score_label =%Label
var score = 0
var maxScore = 3


func update_score (value):
	score +=value
	update_score_label ()
	
func update_score_label():
	score_label.text = "Triangles Collected: " +str(score)
