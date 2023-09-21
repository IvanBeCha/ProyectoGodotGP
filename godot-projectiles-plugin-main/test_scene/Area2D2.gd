extends Area2D

var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://test_scene/test_scene3.tscn")
