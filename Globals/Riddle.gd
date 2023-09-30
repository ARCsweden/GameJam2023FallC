class_name Riddle extends Node2D

#Information
var riddle_name = ""
var prompt = ""
var choice = RiddleChoice.new()
enum difficulty {Easy, Normal, Hard}

class RiddleChoice:
	var text = ""
	var correct = true
