extends CharacterBody2D

var speed = 360
var ball
var player
func _ready():
	ball = get_parent().find_child("Ball")

func _physics_process(delta):
	set_velocity(Vector2(0,get_opponent_direction())*speed)
	move_and_slide()
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







func _on_area_2d_area_entered(area):
	speed=0
	player=get_parent().find_child("Opponent")
	player.speed=360
	print(area.name," PLAYER ENTER")
