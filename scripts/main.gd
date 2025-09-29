extends Node2D
#const rodante = preload("res://escenas/rodante.tscn")

#func aparecer():
	#if $player!=null:
		#var instancia_rodante = rodante.instantiate();
		#instancia_rodante.position=Vector2(872,498)
		#add_child(instancia_rodante)


func _on_timer_timeout() -> void:
	#aparecer()
	pass 
