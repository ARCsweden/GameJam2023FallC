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
var background_sprite = ""

#Choice class
class Choice:
	var choice_prompt = ""
	var choice_type = ""
	var increase_type = "" #Smocka|snille|slisk
	var decrease_type = "" #Smocka|snille|slisk
	var success_chance = 0.0
	var skill_modifier = 0.0
	var outcome_positive_prompt = ""
	var outcome_positive_increase_value = 0
	var outcome_positive_decrease_value = 0
	var outcome_negative_prompt = ""
	var outcome_negative_increase_value = 0
	var outcome_negative_decrease_value = 0

#func _changeSprite():
	#Add checks to see if player sprite needs to be changed here
