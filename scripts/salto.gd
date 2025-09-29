extends AnimatedSprite2D

var time=0
func _process(delta: float) -> void:
	
	if $"../..".pressed==2 and time < 40:
		play("salto")
		time+=1
	else :
		if $"../..".is_on_floor():
			time=0
			
		stop()	
	
