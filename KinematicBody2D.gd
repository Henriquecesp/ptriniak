extends KinematicBody2D
#Movent script

var motion = Vector2()

func _physics_process(delta):
	motion.y += 10
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	
	elif Input.is_action_pressed("ui_up"):
		motion.y = -100
		
	else:
		motion.x = 0
	
	move_and_slide(motion)
