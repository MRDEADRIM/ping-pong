extends KinematicBody2D

var speed=1000;

func _ready():
	pass 

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_just_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_just_pressed("ui_down"):
		velocity.y += 1
		
	move_and_slide(velocity*speed)
