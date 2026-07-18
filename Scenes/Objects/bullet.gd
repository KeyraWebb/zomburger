extends Node2D

var damage = 10
var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.position.y -= delta * speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	body.Hit(damage)
	self.queue_free()
