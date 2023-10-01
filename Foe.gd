extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	change("baseSTAN.png")
	pass # Replace with function body.

func change(file_name):
	
	var temp_path = "res://Assets/Foes/" + file_name
	#print(temp_path)
	get_node(".").texture = load(temp_path)
	
func remove():
	get_node(".").texture = ""

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	change(GlobalBattle.get_battle_sprite())
	pass
