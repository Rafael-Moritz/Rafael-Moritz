extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Frame = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Frame == 1):
		play("3"
	if (Frame == 2):
		play("2")
	if (Frame == 3):
		play("1")
	
	
	pass


func _on_Button_button_up():
	Frame += 1
	
	pass # Replace with function body.
