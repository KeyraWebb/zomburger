#handles game over input

extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false

func _on_restart_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menus/MainMenu.tscn")

func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menus/MainMenu.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
