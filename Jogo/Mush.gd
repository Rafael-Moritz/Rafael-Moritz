extends KinematicBody2D

var velocity = Vector2(250, 250)

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	get_slide_count()
