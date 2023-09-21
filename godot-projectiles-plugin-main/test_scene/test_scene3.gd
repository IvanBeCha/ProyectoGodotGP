extends Node2D

@export var enemy: PackedScene

@onready var heartsContainer = $CanvasLayer/player_hp
@onready var player = $Player
@onready var gameOver =$CanvasLayer/GameOver
@onready var hud = $CanvasLayer/HUD

var Score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	heartsContainer.setMaxHp(player.max_hp)
	heartsContainer.update_health(player.hp)
	player.healthChange.connect(heartsContainer.update_health)
	player.death.connect(_on_player_killed)
	$FinalTimer.start()
	UpdateTimerDisplay()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	UpdateTimerDisplay()


func _on_player_killed():
	gameOver.set_score(Score)
	await get_tree().create_timer(1.5).timeout
	gameOver.visible = true


func _on_final_timer_timeout():
	RestartScene()
	

func UpdateTimerDisplay():
	var time_left = round($FinalTimer.time_left)
	$CanvasLayer/TimeLeft.text = "Time left: " + str(time_left)
	

func RestartScene():
	get_tree().reload_current_scene()
