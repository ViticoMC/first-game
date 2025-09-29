class_name Rodante
extends RigidBody2D


var thrust = Vector2(0, -250)
var torque = 20000
var toque = false
func _physics_process(delta: float) -> void:
	pass


func _on_body_entered(body: Node) -> void:
	if body is Player:

		if not toque :
			$"../player".life-=1
			if $"../player".life<=0:
				$"../player".get_child(1).play("death")
			else:
				$"../player".get_child(1).play("hurt")
			toque=true	
			$AnimatedSprite2D.play("break")
	pass 

func _on_animated_sprite_2d_animation_looped() -> void:
	queue_free()
	pass # Replace with function body.
