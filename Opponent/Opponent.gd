extends KinematicBody2D

var speed = 0
var ball

func _ready():
	ball = get_parent().find_node("Ball")
	
func _physics_process(delta):
	move_and_slide(Vector2(0,get_opponent_direction())*speed)
	
func get_opponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y : 
			return 1
		else: 
			return -1
	else:
		return 0



func _on_Area2D_body_exited(body):
	speed=0


func _on_Area2D_body_entered(body):
	speed=350
