extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	#Load all playable characters from a json
	var players = read_json_file("res://Json/Players.json")
	
	#Pick a random character to be played
	var size = players.size()
	var random_key = players.keys()[randi() % size]
	var player = players[random_key]
	
	#Add stats to the global player variable
	GlobalPlayer.player_name = player["Name"]
	GlobalPlayer.cash = player["Stats"]["Stålar"]
	GlobalPlayer.smock = player["Stats"]["Smocka"]
	GlobalPlayer.brains = player["Stats"]["Snille"]
	GlobalPlayer.slisk = player["Stats"]["Slisk"]
	
	DialogueManager.show_example_dialogue_balloon(load("res://dialogs/main_menu.dialogue"),"main_menu")
	pass # Replace with function body.

func parse_json(text):
	return JSON.parse_string(text)

func read_json_file(file_path):
	var file = FileAccess.open(file_path, FileAccess.READ)
	var content_as_text = file.get_as_text()
	var content_as_dictionary = parse_json(content_as_text)
	return content_as_dictionary


