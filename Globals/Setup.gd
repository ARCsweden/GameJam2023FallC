extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func load_battle():
	#Load all events from a json
	var battles = read_json_file("res://Json/Battles.json")
	
	#Pick the next event at random
	var size = battles.size()
	var random_key = battles.keys()[randi() % size]
	var battle = battles[random_key]
	
	#Add values to the global battle class
	GlobalBattle.battle_name = battle["Name"]
	GlobalBattle.prompt = battle["Prompt"]
	GlobalBattle.battle_type = battle["BattleType"]
	GlobalBattle.start_dialog = battle["StartDialog"]
	GlobalBattle.battle_dialogs = battle["BattleDialogs"]
	GlobalBattle.cash = battle["Stats"]["Stålar"]
	GlobalBattle.smock = battle["Stats"]["Smocka"]
	GlobalBattle.brains = battle["Stats"]["Snille"]
	GlobalBattle.slisk = battle["Stats"]["Slisk"]
	GlobalBattle.hp = battle["Stats"]["Hp"]
	
func load_event():
	#Load all events from a json
	var events = read_json_file("res://Json/Events.json")
	
	#Pick the next event at random
	var size = events.size()
	var random_key = events.keys()[randi() % size]
	var event = events[random_key]
	
	#Add values to the global event class
	GlobalEvent.event_name = event["Name"]
	GlobalEvent.prompt = event["Prompt"]
	
	#Load choices
	#Load choice prompts
	GlobalEvent.choice_one.choice_prompt = event["Choices"][0]["ChoicePrompt"]
	GlobalEvent.choice_two.choice_prompt = event["Choices"][1]["ChoicePrompt"]
	GlobalEvent.choice_three.choice_prompt = event["Choices"][2]["ChoicePrompt"]
	GlobalEvent.choice_four.choice_prompt = event["Choices"][3]["ChoicePrompt"]
	GlobalEvent.choice_five.choice_prompt = event["Choices"][4]["ChoicePrompt"]
	
	#Load choice types
	GlobalEvent.choice_one.choice_type = event["Choices"][0]["ChoiceType"]
	GlobalEvent.choice_two.choice_type = event["Choices"][1]["ChoiceType"]
	GlobalEvent.choice_three.choice_type = event["Choices"][2]["ChoiceType"]
	GlobalEvent.choice_four.choice_type = event["Choices"][3]["ChoiceType"]
	GlobalEvent.choice_five.choice_type = event["Choices"][4]["ChoiceType"]
	
	#Load increase types
	GlobalEvent.choice_one.increase_type = event["Choices"][0]["IncreaseType"]
	GlobalEvent.choice_two.increase_type = event["Choices"][1]["IncreaseType"]
	GlobalEvent.choice_three.increase_type = event["Choices"][2]["IncreaseType"]
	GlobalEvent.choice_four.increase_type = event["Choices"][3]["IncreaseType"]
	GlobalEvent.choice_five.increase_type = event["Choices"][4]["IncreaseType"]
	
	#Load decrease types
	GlobalEvent.choice_one.decrease_type = event["Choices"][0]["DecreaseType"]
	GlobalEvent.choice_two.decrease_type = event["Choices"][1]["DecreaseType"]
	GlobalEvent.choice_three.decrease_type = event["Choices"][2]["DecreaseType"]
	GlobalEvent.choice_four.decrease_type = event["Choices"][3]["DecreaseType"]
	GlobalEvent.choice_five.decrease_type = event["Choices"][4]["DecreaseType"]
	
	#Load success chances
	GlobalEvent.choice_one.success_chance = event["Choices"][0]["SuccessChance"]
	GlobalEvent.choice_two.success_chance = event["Choices"][1]["SuccessChance"]
	GlobalEvent.choice_three.success_chance = event["Choices"][2]["SuccessChance"]
	GlobalEvent.choice_four.success_chance = event["Choices"][3]["SuccessChance"]
	GlobalEvent.choice_five.success_chance = event["Choices"][4]["SuccessChance"]
	
	#Load skill modifiers
	GlobalEvent.choice_one.skill_modifier = event["Choices"][0]["SkillModifier"]
	GlobalEvent.choice_two.skill_modifier = event["Choices"][1]["SkillModifier"]
	GlobalEvent.choice_three.skill_modifier = event["Choices"][2]["SkillModifier"]
	GlobalEvent.choice_four.skill_modifier = event["Choices"][3]["SkillModifier"]
	GlobalEvent.choice_five.skill_modifier = event["Choices"][4]["SkillModifier"]
	
	#Load positive prompts
	GlobalEvent.choice_one.outcome_positive_prompt = event["Choices"][0]["Outcome"][0]["Prompt"]
	GlobalEvent.choice_two.outcome_positive_prompt = event["Choices"][1]["Outcome"][0]["Prompt"]
	GlobalEvent.choice_three.outcome_positive_prompt = event["Choices"][2]["Outcome"][0]["Prompt"]
	GlobalEvent.choice_four.outcome_positive_prompt = event["Choices"][3]["Outcome"][0]["Prompt"]
	GlobalEvent.choice_five.outcome_positive_prompt = event["Choices"][4]["Outcome"][0]["Prompt"]
	
	#Load positive increase values
	GlobalEvent.choice_one.outcome_positive_increase_value = event["Choices"][0]["Outcome"][0]["IncreaseValue"]
	GlobalEvent.choice_two.outcome_positive_increase_value = event["Choices"][1]["Outcome"][0]["IncreaseValue"]
	GlobalEvent.choice_three.outcome_positive_increase_value = event["Choices"][2]["Outcome"][0]["IncreaseValue"]
	GlobalEvent.choice_four.outcome_positive_increase_value = event["Choices"][3]["Outcome"][0]["IncreaseValue"]
	GlobalEvent.choice_five.outcome_positive_increase_value = event["Choices"][4]["Outcome"][0]["IncreaseValue"]
	
	#Load negative prompts
	GlobalEvent.choice_one.outcome_negative_prompt = event["Choices"][0]["Outcome"][1]["Prompt"]
	GlobalEvent.choice_two.outcome_negative_prompt = event["Choices"][1]["Outcome"][1]["Prompt"]
	GlobalEvent.choice_three.outcome_negative_prompt = event["Choices"][2]["Outcome"][1]["Prompt"]
	GlobalEvent.choice_four.outcome_negative_prompt = event["Choices"][3]["Outcome"][1]["Prompt"]
	GlobalEvent.choice_five.outcome_negative_prompt = event["Choices"][4]["Outcome"][1]["Prompt"]
	
	#Load negative decrease values
	GlobalEvent.choice_one.outcome_negative_decrease_value = event["Choices"][0]["Outcome"][1]["DecreaseValue"]
	GlobalEvent.choice_two.outcome_negative_decrease_value = event["Choices"][1]["Outcome"][1]["DecreaseValue"]
	GlobalEvent.choice_three.outcome_negative_decrease_value = event["Choices"][2]["Outcome"][1]["DecreaseValue"]
	GlobalEvent.choice_four.outcome_negative_decrease_value = event["Choices"][3]["Outcome"][1]["DecreaseValue"]
	GlobalEvent.choice_five.outcome_negative_decrease_value = event["Choices"][4]["Outcome"][1]["DecreaseValue"]



func load_riddle():
	#Load all riddles from a json
	var riddles = read_json_file("res://Json/Riddles.json")
	
	#Pick the next riddle at random
	var size = riddles.size()
	var random_key = riddles.keys()[randi() % size]
	var riddle = riddles[random_key]
	
	#Add values to the global riddle class
	GlobalRiddle.prompt = riddle["Prompt"]
	GlobalRiddle.choice_one.text = riddle["Choices"][0]["ChoiceText"]
	GlobalRiddle.choice_two.text = riddle["Choices"][1]["ChoiceText"]
	GlobalRiddle.choice_three.text = riddle["Choices"][2]["ChoiceText"]
	GlobalRiddle.choice_four.text = riddle["Choices"][3]["ChoiceText"]
	GlobalRiddle.choice_one.correct = riddle["Choices"][0]["Correct"]
	GlobalRiddle.choice_two.correct = riddle["Choices"][1]["Correct"]
	GlobalRiddle.choice_three.correct = riddle["Choices"][2]["Correct"]
	GlobalRiddle.choice_four.correct = riddle["Choices"][3]["Correct"]
	GlobalRiddle.difficulty = riddle["Difficulty"]

func load_slisks():
	#Load all slisks from a json
	var slisksRaw = read_json_file("res://Json/Slisks.json")
	var slisks = slisksRaw["Slisks"]
	#Pick the next slisk at random
	var size = slisks.size()
	var random_key = randi() % size
	var slisk = slisks[random_key]
	
	#Add values to the global slisk class
	GlobalSlisk.choice_one.text = slisk["Choices"][0]["ChoiceText"]
	GlobalSlisk.choice_two.text = slisk["Choices"][1]["ChoiceText"]
	GlobalSlisk.choice_three.text = slisk["Choices"][2]["ChoiceText"]
	GlobalSlisk.choice_four.text = slisk["Choices"][3]["ChoiceText"]
	
func parse_json(text):
	return JSON.parse_string(text)

func read_json_file(file_path):
	var file = FileAccess.open(file_path, FileAccess.READ)
	var content_as_text = file.get_as_text()
	var content_as_dictionary = parse_json(content_as_text)
	return content_as_dictionary
