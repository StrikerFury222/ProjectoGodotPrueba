extends AnimatedSprite2D

var activable = false

# Called when the node enters the scene tree for the first time.
func _ready():
	play("None")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print(is_playing(),activable)
	if activable:
		activable = false
		play("Attack")

func _input(event):
	# check is_action_just_pressed
	if !activable and event.is_action_pressed("Reproducir"):
		activable = true
