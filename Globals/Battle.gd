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

func get_grunt_sprite():
	var tempStat = max(smock,brains,slisk)
	if(smock==brains && smock == slisk) : return "baseSTAN.png"
	elif(smock==tempStat) : return "SmockaSTAN.png"
	elif(brains==tempStat) : return "SnilleSTAN.png"
	elif(slisk==tempStat) : return "SliskSTAN.png"

func get_battle_sprite():
	#Dummy thic hack incomming
	if(gameover): return "NarratorSTAN.png"
	elif(battle_type=="Boss"):
		if(level==1) :
			#Stinky hack
			if(battle_name == "Sebastian Student") : return"baseStan.png"
			else: return "SvenStark.png"
		elif(level==2): return "SamSchnygg.png"
		elif(level==3): return "StefanSynaps.png"
		elif(level==4): return "StigAfSchtenrik.png"
		else: return "SimonVonSteinberg.png"
	else: return get_grunt_sprite()
	
	

func get_random():
	random_val = randf()
	
#func _changeSprite():
	#Add checks to see if player sprite needs to be changed here
