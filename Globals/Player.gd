class_name Player extends Node2D

#Information
var player_name = ""
var level = 1
var sprite = "" #Path to sprite here
var grunts_defeated = 0

#Stats
var cash = 0
var smock = 0
var brains = 0
var slisk = 0
var hp = 0


var answer = ""
#func _changeSprite():
	#Add checks to see if player sprite needs to be changed here

func add_cash():
	cash += round(GlobalBattle.cash)

func increase_grunts_defeated():
	grunts_defeated += 1

func increase_skill(skill_to_update, amount):
	if(skill_to_update == "Slisk"):
		answer = "Du känner dig sliskigare"
		slisk += amount
	elif skill_to_update == "Snille":
		answer = "Du känner dig smartare"
		brains += amount
	elif skill_to_update == "Smocka":
		answer = "Du känner dig starkare"
		smock += amount
	elif skill_to_update == "Stålar":
		answer = "Du känner dig rikare"
		cash += amount
	
	
func decrease_skill(skill_to_update, amount):
	if(skill_to_update == "Slisk"):
		answer = "Du tappar din sliskighet"
		slisk -= amount
	elif skill_to_update == "Snille":
		answer = "Du känner dig dummare"
		brains -= amount
	elif skill_to_update == "Smocka":
		answer = "Du känner dig svagare"
		smock -= amount
	elif skill_to_update == "Stålar":
		answer = "Du känner dig fattigare"
		cash -= amount
	
