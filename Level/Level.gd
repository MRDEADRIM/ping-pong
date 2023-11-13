extends Node

var PlayerScore=0
var OpponentScore=0

func _on_Left_body_entered(body):
	$Ball.position = Vector2(960,540)
	
	$OpponentScore.text = str(OpponentScore)
	OpponentScore+=1

func _on_Right_body_entered(body):
	$Ball.position = Vector2(960,540)
	
	$PlayerScore.text =str(PlayerScore)
	PlayerScore+=1

func _process(delta):
	pass
	

	
	
	
