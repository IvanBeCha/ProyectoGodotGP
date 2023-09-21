extends TileMap

var background_music: AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	background_music = $BackgroundMusic
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func play_background_music():
	# Play the background music
	background_music.play()

func stop_background_music():
	# Stop the background music
	background_music.stop()
