extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://dialogs/main_menu.dialogue"),"main_menu")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
