extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	#Gets score and time from global script
	text = "Score :%s Time:%s" %[Global.score,Global.time] 

