extends RigidBody2D


func _ready() -> void:
	$animated.autoplay="moviendo"
	pass

var toque = false

func _on_body_entered(body: Node) -> void:
	
	if body is Player:
		if not toque :
			body.life-=1
			if body.life<=0:
				body.get_child(1).play("death")
				body.velocity.x=0
				body.velocity.y=50
			else:
				body.get_child(1).play("hurt")
				body.velocity.x=0
				body.velocity.y=50
			toque=true	
			sleeping = true
			$CollisionShape2D.disabled=true
			$animated.play("break")
	pass 


func _on_animated_animation_looped() -> void:
	queue_free()
	pass 


func _on_timer_timeout() -> void:
	queue_free()
	pass 
