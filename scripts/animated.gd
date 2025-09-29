extends AnimatedSprite2D
var last_direction

func _ready() -> void:
	set_autoplay("idle")
	
func _process(delta: float) -> void:
	if animation!="hurt" and animation!="death":
		if Input.is_action_pressed("izquierda"):
			last_direction="left"
			flip_h=false	
			play("walk")
		elif Input.is_action_pressed("derecha"):
			last_direction="right"
			play("walk")
			flip_h=true
		elif 	$"..".is_on_floor() and last_direction=="left":
			play("idle2")
			flip_h=false
		elif $"..".is_on_floor() and last_direction=="right":
			play("idle2")
			flip_h=true		
		if 	$"..".is_on_floor() and Input.is_action_just_pressed("saltar"):
			play("idle")
			flip_h=false
			last_direction="up"
		
	pass
