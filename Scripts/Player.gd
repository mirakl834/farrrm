extends KinematicBody2D

#Contains x and y
var motion = Vector2()

func _process(delta):
	
	if(Input.is_action_pressed("ui_up")):
		motion.y = -100
		
	elif(Input.is_action_pressed("ui_down")):
		motion.y = 100
	
	elif(Input.is_action_pressed("ui_right")):
		motion.x = 100
	
	elif(Input.is_action_pressed("ui_left")):
		motion.x = -100
		
	else:
		motion.x = 0
		motion.y = 0
	
	move_and_slide(motion)
	pass
