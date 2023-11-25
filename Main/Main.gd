extends Node

var PlayerScore=0
var OpponentScore=0

func _on_Left_body_entered(body):
	$Ball.position = Vector2(960,540)
	$OpponentScore.text = str(OpponentScore)
	OpponentScore+=1
	$Player.speed=16000
	

func _on_Right_body_entered(body):
	$Ball.position = Vector2(960,540)
	PlayerScore+=1
	$PlayerScore.text =str(PlayerScore)
	$Opponent.speed=16000
	print('hello')

func _process(delta):
	pass
	

	
	
	
