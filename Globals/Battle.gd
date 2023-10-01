class_name Battle extends Node2D

#Information
var battle_name = ""
var level = 1
var prompt = ""
var battle_type = ""
var start_dialog = ""
var battle_dialogs = ""
var character_sprite = ""
var background_sprite = ""

#Stats
var cash = 4
var smock = 4
var brains = 4
var slisk = 4
var hp = 20
var gameover = true

var random_val = 0

func get_random():
	random_val = randf()
	
#func _changeSprite():
	#Add checks to see if player sprite needs to be changed here
