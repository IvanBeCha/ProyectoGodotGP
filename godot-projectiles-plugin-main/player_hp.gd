extends HBoxContainer

@onready var heartGuiClass = preload("res://heart_gui.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setMaxHp(max: int):
	for i in range(max):
		var heart = heartGuiClass.instantiate()
		add_child(heart)
		
func update_health(currentHealth: int):
	var hearts = get_children()
	
	for i in range(currentHealth):
		hearts[i].update(true)
	
	for i in range(currentHealth, hearts.size()):
		hearts[i].update(false)
