extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func change(file_name):
	get_node(".").texture = load("res://Assets/Backgrounds/" + file_name)
	
func remove():
	get_node(".").texture = null

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
