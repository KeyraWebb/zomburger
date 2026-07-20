extends Node2D

var damage = 0
var velocity = Vector2.ZERO
@export var speed = 500

	
func _physics_process(delta: float) -> void:
	translate(velocity * speed * delta) #move in direction shot

func _on_area_2d_body_entered(body: Node2D) -> void:
	body.Hit(damage)
	queue_free()
