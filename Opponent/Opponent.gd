extends CharacterBody2D

var speed = 360
var ball
var player

func _ready():
	ball = get_parent().find_child("Ball")
	
func _physics_process(delta):
	set_velocity(Vector2(0,get_opponent_direction())*speed)
	move_and_slide()
	
func get_opponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y : 
			return 1
		else: 
			return -1
	else:
		return 0




func _on_area_2d_area_entered(area):
	player=get_parent().find_child("Player")
	player.speed=360
	speed=0
	print(area.name," oPPONNET body enter")
