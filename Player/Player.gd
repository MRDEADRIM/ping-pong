extends CharacterBody2D

var speed = 16000
var ball
var player
var player_control=0

func _ready():
	ball = get_parent().find_child("Ball")

func _physics_process(delta):
	if player_control==1:

		var input = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		
		velocity.y = input * speed * delta
	else :
		set_velocity(Vector2(0,get_opponent_direction())*speed*delta)
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
	if player_control==0:
		speed=0
#	player=get_parent().find_child("Opponent")
#	player.speed=16000
#	print(area.name," PLAYER ENTER")
