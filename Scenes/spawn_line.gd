#handles spawning of zombies

extends Area2D

@onready var line = $CollisionShape2D
@export var timeTillSpawn = 1 
@export var zombie : PackedScene
@export var minSpawnTime : float
@export var maxSpawnTime : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timeTillSpawn -= delta
	if timeTillSpawn <= 0:
		SpawnEnemy(zombie)
		timeTillSpawn = randf_range(minSpawnTime,maxSpawnTime)
	
#spawns an enemy within the spawn area	
func SpawnEnemy(enemy):
	var newEnemy = enemy.instantiate()
	self.add_child(newEnemy)
	var xpos = randi_range(line.shape.a.x,line.shape.b.x)
	newEnemy.global_position = Vector2(xpos, self.global_position.y)
