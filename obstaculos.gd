extends Node
	
var i=-1
func _physics_process(delta):
	

	
	if Input.is_action_just_pressed("ui_left")  :
		var escena = preload("res://rodante.tscn").instantiate()
		escena.global_position=Vector2(872,498)
		add_child(escena)
		i+=1
		pass
	if Input.is_action_just_pressed("ui_right") and i>=0 :
		#remove_child(get_child(i))
		#i-=1
		pass
