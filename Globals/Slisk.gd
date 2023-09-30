class_name Slisk extends Node2D

#Information
var riddle_name = ""
var prompt = ""
var choice = SliskChoice.new()
var threshhold = 0 #Threshhold that needs to be reached to complete slisk encounter

class SliskChoice:
	var text = ""
	var increment_value = 0
