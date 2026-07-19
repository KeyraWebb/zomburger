extends CharacterBody2D


@export var speed = 300.0
var bullet = load("res://Scenes/Objects/Bullet.tscn")
@onready var bulletHouse = $"../Bullet house"
@onready var gameManager = $".."
@export var zombieCamLimits = [0,0,1152,648]
@export var dinerCamLimits = [2300,0,3452,648]
@export var zombieCam : Camera2D
@export var dinerCam : Camera2D
@export var startScene = "zombie"


func _ready() -> void:
	switchCam(startScene)

func _physics_process(_delta: float) -> void:

	get_input()
	move_and_slide()

#I stole this from the godot tuts: https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html
func get_input(): 
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_direction * speed

func _input(event: InputEvent) -> void:
	
	if event.is_action_pressed("Shoot"):
		fire_bullet()
	elif event.is_action_pressed("Interact"):
		pass
			
func fire_bullet():
	var newBullet = bullet.instantiate()
	bulletHouse.add_child(newBullet)
	newBullet.position = self.position

func switchCam(locName):
	match locName:
		"zombie":
			zombieCam.make_current()
			self.global_position = gameManager.zombieScene.spawnPos.global_position
		"diner":
			dinerCam.make_current()
			self.global_position = gameManager.dinerScene.spawnPos.global_position
