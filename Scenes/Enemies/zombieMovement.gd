#handles movement and attack for zombies

extends CharacterBody2D

@export var baseSpeed = 100
@export var attack = 1
@export var attackSpeed = 1

@onready var gameManager = $"../../.."

var currSpeed
var attacking = false
var attackTimer


func _ready() -> void:
	#when begin, move down the screen
	currSpeed = baseSpeed

func _process(delta: float) -> void:
	
	#if in attack mode, attack
	if attacking:
		attackTimer -= delta
		if attackTimer <= 0:
			attackTimer = attackSpeed
			gameManager.Damage(attack)
			
func _physics_process(_delta: float) -> void:
	velocity.y = currSpeed
	move_and_slide()

#stops moving at begins attack cycle
func Attack():
	attacking = true
	currSpeed = 0
	attackTimer = attackSpeed
	
