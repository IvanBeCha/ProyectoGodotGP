extends Control

var is_paused = false : 
	set(value):
		is_paused = value
		get_tree().paused = is_paused
		visible = is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused 

func _on_resume_button_pressed():
	print("Resume button pressed")
	self.is_paused = false

func _on_quit_button_pressed():
	print("le puchaste, adios")
	get_tree().quit()
