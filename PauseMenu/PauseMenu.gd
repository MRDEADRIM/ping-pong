extends Control

func _ready():
	pass 

func _on_Play_pressed():
	get_tree().paused = not get_tree().paused


func _on_Settings_pressed():
	pass 

func _on_Exit_pressed():
	get_tree().quit()
