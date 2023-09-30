class_name Riddle extends Node2D

#Information
var riddle_name = ""
var prompt = ""
var choice_one = RiddleChoice.new()
var choice_two = RiddleChoice.new()
var choice_three = RiddleChoice.new()
var choice_four = RiddleChoice.new()
var difficulty = 1

class RiddleChoice:
	var text = ""
	var correct = true
