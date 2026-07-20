extends Node2D

@export var damage = 10
@export var fireSpeed = 5

var fireTimer
var target = []
var bullet = load("res://Scenes/Objects/TowerBullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fireTimer = fireSpeed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	fireTimer -= delta
	if fireTimer <= 0 && !target.is_empty():
		fire()

#spawns and aims bullet
func fire(): 
	var newBullet = bullet.instantiate()
	self.add_child(newBullet)
	newBullet.global_position = global_position
	newBullet.velocity = (global_position.direction_to(target.front().global_position)) #aims in direction of target
	newBullet.damage = damage
	fireTimer = fireSpeed

func _on_area_2d_body_entered(body: Node2D) -> void:
	target.append(body)

func _on_area_2d_body_exited(body: Node2D) -> void:
	target.erase(body) #removes target when gone
