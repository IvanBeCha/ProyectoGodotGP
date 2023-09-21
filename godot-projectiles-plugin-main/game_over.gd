extends Control

func set_score(value):
	$Panel/Score.text = "Score: " + str(value)


func set_high_score(value):
	$Panel/HighScore.text = "Hi-Score: " + str(value)
	
	
func _on_restart_pressed():
	get_tree().reload_current_scene()
