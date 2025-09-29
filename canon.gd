extends Node2D
const balas =preload("res://escenas/balas.tscn")

func disparar():
	var bala = balas.instantiate()
	bala.apply_central_impulse(Vector2(-700, -300))
	bala.global_position = $Marker2D.global_position
	$"..".add_child(bala)


func _on_timer_timeout() -> void:
	if $"../player"!=null:
		disparar()
	else:
		$Timer.stop()
	 
	
