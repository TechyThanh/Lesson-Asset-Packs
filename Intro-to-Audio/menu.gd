extends CanvasLayer

var paused = false

func _ready():
	visible = false
	
func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		if paused == false:
			visible = true
			paused = true
		elif paused == true:
			visible = false
			paused = false
