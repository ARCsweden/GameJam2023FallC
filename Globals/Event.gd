class_name Event extends Node2D

#Information
var event_name = ""
var level = 1
var prompt = ""
var choice = Choice.new()
var background_sprite = ""

#Choice class
class Choice:
	var choice_name = ""
	var increase_type = "" #Smocka|snille|slisk
	var decrease_type = "" #Smocka|snille|slisk
	var success_chance = 0.0
	var skill_modifier = 0.0
	var outcome_prompt = ""
	enum outcome_type {Positive, Negative}
	var outcome_increase_value = 0
	var outcome_decrease_value = 0

#func _changeSprite():
	#Add checks to see if player sprite needs to be changed here
