extends CharacterBody2D


@export var speed = 300.0


func _physics_process(_delta: float) -> void:

	get_input()
	move_and_slide()

#I stole this from the godot tuts: https://docs.godotengine.org/en/stable/tutorials/2d/2d_movement.html
func get_input(): 
	var input_direction = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = input_direction * speed
