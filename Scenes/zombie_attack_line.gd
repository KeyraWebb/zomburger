extends Node2D
@onready var spawnLineShape = $SpawnLine/CollisionShape2D
@onready var damageAreaShape = $DamageArea/CollisionShape2D
@onready var damageArea = $DamageArea

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#UpdateAreaSizes()
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func UpdateAreaSizes():
	var xLength = get_global_transform_with_canvas().get_scale().x
	var yLength = get_global_transform_with_canvas().get_scale().y
	
	spawnLineShape.shape.b.x = xLength
	damageAreaShape.shape.size.x = xLength
	
	print(damageArea.transform.x)
	print(yLength - damageAreaShape.shape.size.y)
	damageArea.transform = Vector2(damageArea.transform.x, yLength - damageAreaShape.shape.size.y) 
	Vector2()
