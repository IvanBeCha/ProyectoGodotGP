extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true
	

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://test_scene/test_scene2.tscn")
	
