extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/Start.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	get_tree().change_scene_to_file("res://test_scene/test_scene.tscn")


func _on_options_pressed():
	$MarginContainer/VBoxContainer/Options.visible = true


func _on_quit_pressed():
	get_tree().quit()


#func _on_ready():
#	var score_scene = load("res://SCORE.tscn")  # Carga la escena SCORE
#	var score_instance = score_scene.instantiate()  # Crea una instancia de la escena
#	add_child(score_instance)  # Agrega la instancia como un hijo para mostrarla instantáneamente
