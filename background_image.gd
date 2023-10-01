extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	#set default here
	get_node(".").texture = load("res://Assets/Backgrounds/Generic_office_1.png")
	pass # Replace with function body.
	
func change(file_name):
	get_node(".").texture = load("res://Assets/Backgrounds/" + file_name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GlobalBattle.gameover):
		change(GlobalEvent.background_sprite)
	else: 
		change("Generic_office_1.png")
		GlobalEvent.random_background()
		#Stinkty hack
		
	pass
