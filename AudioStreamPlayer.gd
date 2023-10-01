extends AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	self.stop()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if playing == false and stream != null:
		play()
	pass

func switch_to_battle():
	stream = load("res://Music/wav/BossBattle1.wav");
	
func switch_to_event():
	stream = load("res://Music/wav/Event1.wav");
