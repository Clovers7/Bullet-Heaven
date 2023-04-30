extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$O_pressed.visible = false

func _process(delta):
	if Input.is_action_pressed("dash"):
		$O.visible = false
		$O_pressed.visible = true
	else:
		$O.visible = true
		$O_pressed.visible = false
