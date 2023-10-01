extends TextureProgressBar


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = GlobalBattle.game_state
	if GlobalBattle.gameover:
		activateBar(false)
	else:
		activateBar(true)
	pass

func activateBar(active: bool):
	max_value = GlobalBattle.hp + GlobalPlayer.hp
	visible = active
	pass
	
