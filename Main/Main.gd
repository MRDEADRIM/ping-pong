extends Node

var PlayerScore=0
var OpponentScore=0

func _on_Left_body_entered(body):
	$Ball.position = Vector2(960,540)

	$OpponentScore.text = str(OpponentScore)
	OpponentScore+=1

func _on_Right_body_entered(body):
	$Ball.position = Vector2(960,540)
	PlayerScore+=1
	$PlayerScore.text =str(PlayerScore)
	

func _process(delta):
	pass
	

	
	
	
