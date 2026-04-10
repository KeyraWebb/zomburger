#handles pause menu input

extends Control

@onready var gameManager = $"../.."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false #make sure menu is off when begin
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("Pause"):
		if !gameManager.gameOver:	#make sure it doesn't interfere with the game over menu	
			self.visible = !self.visible
			get_tree().paused = !get_tree().paused

func _on_resume_pressed() -> void:
	get_tree().paused = false
	self.visible = false

func _on_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/Menus/MainMenu.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
