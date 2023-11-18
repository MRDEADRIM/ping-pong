extends CharacterBody2D

var speed = 600
var characterVelocity = Vector2.ZERO

func _ready():
	characterVelocity.x = [-1, 1][randi() % 2]
	characterVelocity.y = [-0.8, 0.8][randi() % 2]

func _physics_process(delta):
	var collision = move_and_collide(characterVelocity * speed * delta)
	if collision:
		var collision_normal = collision.get_normal()
		characterVelocity = characterVelocity.bounce(collision_normal)
