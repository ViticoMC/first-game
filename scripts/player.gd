class_name Player
extends CharacterBody2D

var speed = 200.0
var salto =280
var  pressed=0
@export var gravity=560
var life = 10;
var choque=false
var animated_player


func _ready():
	animated_player = $player_animation
	pass
	
func _physics_process(delta):
	if(life==0):
		animated_player.play("death")
	
	if animated_player.animation!="hurt" and animated_player.animation!="death":
		if Input.is_action_pressed("izquierda"):
			velocity.x=speed*(-1)
		elif Input.is_action_pressed("derecha"):
			velocity.x=speed
		else :
			velocity.x=0
		
		if not is_on_floor():
			velocity.y=velocity.y+gravity*delta
		if pressed==2 && is_on_floor():
			pressed=0	
		elif  is_on_floor() or pressed<2:
			var jump_pressed = Input.is_action_just_pressed("saltar")
			if jump_pressed :
				velocity.y= velocity.y - salto+pressed*50
				pressed+=1

	move_and_slide()


func _on_animated_sprite_2d_animation_looped() -> void:
	if animated_player.animation == "hurt":
		animated_player.play("idle")
	elif animated_player.animation =="death" and life<=0:
		queue_free()
	pass # Replace with function body.
