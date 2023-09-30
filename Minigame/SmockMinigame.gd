extends VSlider

@onready var increasing = true
@onready var multiplier = 1.2
@onready var max_slider_speed = 5
@onready var max_slider_value = 100
@onready var min_slider_value = 0
@onready var done = false
@onready var damage = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(!done):
		if(self.value == min_slider_value):
			increasing = true
			if(self.step < max_slider_speed):
				self.step = self.step * multiplier
			self.value = self.value + self.step
		elif(self.value < max_slider_value and increasing == true):
			self.value = self.value + self.step
		elif(self.value == max_slider_value):
			increasing = false
			if(self.step < max_slider_speed):
				self.step = self.step * multiplier
			self.value = self.value - self.step
		else:
			self.value = self.value - self.step
	
	if Input.is_action_pressed("LeftClick"):
		if(self.value < 80 and self.value > 60):
			damage = 10
		elif(self.value < 90 and self.value > 50):
			damage = 5
		done = true
		
	pass
