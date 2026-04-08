#probably need to refactor this later
extends Area2D

#stops zombies moving and begins their attack cycle
func _on_body_entered(body: Node2D) -> void:
	body.Attack()
