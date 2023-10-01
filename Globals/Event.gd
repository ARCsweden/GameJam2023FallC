class_name Event extends Node2D

#Information
var event_name = ""
var level = 1
var prompt = ""
var choice_one = Choice.new()
var choice_two = Choice.new()
var choice_three = Choice.new()
var choice_four = Choice.new()
var choice_five = Choice.new()
var background_sprite = "NiceAndCleanBedroom.png"

#Choice class
class Choice:
	var choice_prompt = ""
	var choice_type = ""
	var increase_type = "" #Smocka|snille|slisk
	var decrease_type = "" #Smocka|snille|slisk
	var success_chance = 0.0
	var success_threshhold = 5
	var skill_modifier = 0.0
	var outcome_positive_prompt = ""
	var outcome_positive_increase_value = 0
	var outcome_negative_prompt = ""
	var outcome_negative_decrease_value = 0


func random_background():
	var bgnum = randi()%4
	if(bgnum==0): background_sprite = "Generic_office_1.png"
	elif(bgnum==1): background_sprite = "Generic_office_2.png"
	elif(bgnum==2): background_sprite = "Generic_Town_1.png"
	elif(bgnum==3): background_sprite = "Street.png"
	
	#Add checks to see if player sprite needs to be changed here
