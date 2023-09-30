extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	#Load all playable characters from a json
	var players = read_json_file("res://Json/Players.json")
	
	#Pick a random character to be played
	var size = players.size()
	var random_key = players.keys()[randi() % size]
	var player = players[random_key]
	
	#Add stats to the global player variable
	GlobalPlayer.player_name = player["Name"]
	GlobalPlayer.cash = player["Stats"]["Stålar"]
	GlobalPlayer.smock = player["Stats"]["Smocka"]
	GlobalPlayer.brains = player["Stats"]["Snille"]
	GlobalPlayer.slisk = player["Stats"]["Slisk"]
	GlobalPlayer.hp = player["Stats"]["Hp"]
	
	#Load tutorial values
	#Load tutorial event
	#Choice one
	GlobalEvent.choice_one.choice_type = "Smocka"
	GlobalEvent.choice_one.choice_prompt = "Du gör ändå din proteinshake och morgonträning, rutiner är viktigast"
	GlobalEvent.choice_one.increase_type = "Smocka"
	GlobalEvent.choice_one.decrease_type = "Smocka"
	GlobalEvent.choice_one.success_threshhold = 5
	GlobalEvent.choice_one.skill_modifier = 1.5
	GlobalEvent.choice_one.success_chance = 0.5
	if(GlobalPlayer.smock > GlobalEvent.choice_one.success_threshhold):
		GlobalEvent.choice_one.success_chance *=  GlobalEvent.choice_one.skill_modifier
	GlobalEvent.choice_one.outcome_positive_prompt = "När du trillar in på jobbet 10:00 har chefen inte kommit än, så ingen märkte att du var sen. Du hinner till och med lyfta lite mer skrot innan chefen kommer in till jobbet!"
	GlobalEvent.choice_one.outcome_positive_increase_value = 5
	GlobalEvent.choice_one.outcome_negative_prompt = "Chefen är rosenrasande, och tvingar dig till att jobba över för att ta igen det. Du missar kvällens gympass.."
	GlobalEvent.choice_one.outcome_negative_decrease_value = 3
	
	#Choice two
	GlobalEvent.choice_two.choice_type = "Snille"
	GlobalEvent.choice_two.choice_prompt = "Jobbar hemifrån för dagen"
	GlobalEvent.choice_two.increase_type = "Snille"
	GlobalEvent.choice_two.decrease_type = "Snille"
	GlobalEvent.choice_two.success_threshhold = 5
	GlobalEvent.choice_two.skill_modifier = 1.5
	GlobalEvent.choice_two.success_chance = 0.5
	if(GlobalPlayer.smock > GlobalEvent.choice_two.success_threshhold):
		GlobalEvent.choice_two.success_chance *=  GlobalEvent.choice_two.skill_modifier
	GlobalEvent.choice_two.outcome_positive_prompt = "Du hade inga möten, så ingen märkte att du var helt oduschad och oföreberedd. Chefen kommenderar dig för att du kan jobba så flexibelt."
	GlobalEvent.choice_two.outcome_positive_increase_value = 5
	GlobalEvent.choice_two.outcome_negative_prompt = "Klockan 8:30 prick ringer chefen dig i ett videosamtal, och ser direkt att du inte duschat. Detta såg inte bra ut.."
	GlobalEvent.choice_two.outcome_negative_decrease_value = 3
	
	#Choice three
	GlobalEvent.choice_three.choice_type = "Slisk"
	GlobalEvent.choice_three.choice_prompt = "Du sjukanmäler dig från jobbet"
	GlobalEvent.choice_three.increase_type = "Slisk"
	GlobalEvent.choice_three.decrease_type = "Slisk"
	GlobalEvent.choice_three.success_threshhold = 5
	GlobalEvent.choice_three.skill_modifier = 1.5
	GlobalEvent.choice_three.success_chance = 0.5
	if(GlobalPlayer.smock > GlobalEvent.choice_three.success_threshhold):
		GlobalEvent.choice_three.success_chance *=  GlobalEvent.choice_three.skill_modifier
	GlobalEvent.choice_three.outcome_positive_prompt = "Chefen tycker synd om dig för din sjukdom och skickar hemleverans av mat till dig. Score!"
	GlobalEvent.choice_three.outcome_positive_increase_value = 5
	GlobalEvent.choice_three.outcome_negative_prompt = "En kollega ser att du blir taggad i en bild när du drar ut för en förmiddagsdrink och skvallrar för chefen. Skämmigt!"
	GlobalEvent.choice_three.outcome_negative_decrease_value = 3
	
	#Choice four
	GlobalEvent.choice_four.choice_type = "Stålar"
	GlobalEvent.choice_four.choice_prompt = "Du struntar i att gå till jobbet, pappa betalar hyran ändå"
	GlobalEvent.choice_four.increase_type = "Stålar"
	GlobalEvent.choice_four.decrease_type = "Stålar"
	GlobalEvent.choice_four.success_threshhold = 5
	GlobalEvent.choice_four.skill_modifier = 1.5
	GlobalEvent.choice_four.success_chance = 0.5
	if(GlobalPlayer.smock > GlobalEvent.choice_four.success_threshhold):
		GlobalEvent.choice_four.success_chance *=  GlobalEvent.choice_four.skill_modifier
	GlobalEvent.choice_four.outcome_positive_prompt = "Chefen var för bakis för att märka att du inte ens var på jobbet idag. En lyckad aktieinvestering från din sida ger dig lite extra inkomst för dagen."
	GlobalEvent.choice_four.outcome_positive_increase_value = 5
	GlobalEvent.choice_four.outcome_negative_prompt = "Du får sparken, pappa blir sur och tar tillbaka en månadspeng"
	GlobalEvent.choice_four.outcome_negative_decrease_value = 3
	
	#Choice five
	GlobalEvent.choice_five.choice_type = "RödSmocka"
	GlobalEvent.choice_five.choice_prompt = "Slå ett hål i väggen och gå tll gymmet"
	GlobalEvent.choice_five.increase_type = "Smocka"
	GlobalEvent.choice_five.decrease_type = "Smocka"
	GlobalEvent.choice_five.success_threshhold = 5
	GlobalEvent.choice_five.skill_modifier = 1.5
	GlobalEvent.choice_five.success_chance = 0.5
	if(GlobalPlayer.smock > GlobalEvent.choice_five.success_threshhold):
		GlobalEvent.choice_five.success_chance *=  GlobalEvent.choice_five.skill_modifier
	GlobalEvent.choice_five.outcome_positive_prompt = "Du slog personbästa på gymmet, och när du kom till jobbet så råkade det vara halvdag den dagen. Snyggt!"
	GlobalEvent.choice_five.outcome_positive_increase_value = 5
	GlobalEvent.choice_five.outcome_negative_prompt = "Hyresvärden råkade ha en rutininspektion under dagen, och blir sur. Du får betala för hålet, och har nu inte råd med månadens gymkort."
	GlobalEvent.choice_five.outcome_negative_decrease_value = 3
	
	#Load tutorial battle
	GlobalBattle.battle_name = "Sebastian Student"
	GlobalBattle.prompt = "Du sitter i lobbyn till företaget BBA, väntande på att bli uppropad till din intervju. Du har sökt jobbet som data analytiker, och är hoppfull om dina chanser. I rummet sitter bara en enda person till, en av dina klasskamrater från universitetet. Du minns bara klasskamraten som helt inkompetent inom allt, men tänk om chefen inte håller med. Kanske är dags att visa vem som är rätt person för rollen..."
	GlobalBattle.battle_type = "Boss"
	GlobalBattle.start_dialog = "Kan du bli min kontakt på LinkedIn?"
	GlobalBattle.battle_dialogs = "Ugh"
	#GlobalBattle.battle_dialogs = "" ADD SPRITE HERE
	#GlobalBattle.battle_dialogs = "" ADD BACKGROUND HERE
	
	DialogueManager.show_example_dialogue_balloon(load("res://dialogs/main_menu.dialogue"),"main_menu")
	pass # Replace with function body.

func parse_json(text):
	return JSON.parse_string(text)

func read_json_file(file_path):
	var file = FileAccess.open(file_path, FileAccess.READ)
	var content_as_text = file.get_as_text()
	var content_as_dictionary = parse_json(content_as_text)
	return content_as_dictionary

