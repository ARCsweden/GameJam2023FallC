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
var cash = 0
var smock = 0
var brains = 0
var slisk = 0
var hp = 0

var random_attack = 0

func select_random_attack():
	random_attack = randf()
	
#func _changeSprite():
	#Add checks to see if player sprite needs to be changed here
