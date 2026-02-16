extends Node2D
@onready var spawnLineShape = $SpawnLine/CollisionShape2D
@onready var damageAreaShape = $DamageArea/CollisionShape2D
@onready var damageArea = $DamageArea

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	UpdateAreaSizes()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func UpdateAreaSizes():
	var xLength = get_global_transform_with_canvas().get_scale().x
	var yLength = get_global_transform_with_canvas().get_scale().y
	
	spawnLineShape.shape.B.x = xLength
	damageAreaShape.shape.x = xLength
	
	damageArea.transform.x = yLength - damageArea.shape.y
