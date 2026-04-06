extends CharacterBody2D

@export var speed = 5

func _process(_delta: float) -> void:
	self.position.y = self.position.y + speed
