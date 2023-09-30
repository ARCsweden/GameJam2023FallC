class_name Slisk extends Node2D

#Information
var choice_one = SliskChoice.new()
var choice_two = SliskChoice.new()
var choice_three = SliskChoice.new()
var choice_four = SliskChoice.new()
var threshhold = 0 #Threshhold that needs to be reached to complete slisk encounter

class SliskChoice:
	var text = ""
	var increment_value = 0
