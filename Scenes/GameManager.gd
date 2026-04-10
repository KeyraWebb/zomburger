#handles main game information 

extends Node2D

@export var maxHealth = 100

@onready var healthBar = $CanvasLayer/HealthBar
@onready var gameOverMenu = $CanvasLayer/GameOver
@onready var pauseMenu = $CanvasLayer/Pause

var health
var gameOver

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = maxHealth
	healthBar.max_value = maxHealth
	healthBar.value = health
	gameOver = false
	
func Damage(amount):
	health -= amount
	healthBar.value = health
	if health <= 0:
		GameOver()

func GameOver():
	gameOver = true
	gameOverMenu.visible = true
	get_tree().paused = true
