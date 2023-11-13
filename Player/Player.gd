extends KinematicBody2D

var speed = 0
var ball

func _ready():
	ball = get_parent().find_node("Ball")

func _physics_process(delta):
	move_and_slide(Vector2(0,get_opponent_direction())*speed)
	#var velocity = Vector2.ZERO
	#if Input.is_action_just_pressed("ui_up"):
	#	velocity.y -= 1
	#if Input.is_action_just_pressed("ui_down"):
	#	velocity.y += 1
	#move_and_slide(velocity*speed)


func pause():
	speed=0

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
