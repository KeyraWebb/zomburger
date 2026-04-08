extends Node2D

@export var maxHealth = 100
@onready var healthBar = $CanvasLayer/HealthBar
var health


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = maxHealth
	healthBar.max_value = maxHealth
	healthBar.value = health

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func Damage(amount):
	health -= amount
	healthBar.value = health
