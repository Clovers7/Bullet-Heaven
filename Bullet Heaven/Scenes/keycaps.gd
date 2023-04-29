extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("up"):
		$up.modulate = Color(1, 1, 0, 1)
	else:
		$up.modulate = Color(1, 1, 1, 1)
	if Input.is_action_pressed("down"):
		$down.modulate = Color(1, 1, 0, 1)
	else:
		$down.modulate = Color(1, 1, 1, 1)
	if Input.is_action_pressed("left"):
		$left.modulate = Color(1, 1, 0, 1)
	else:
		$left.modulate = Color(1, 1, 1, 1)
	if Input.is_action_pressed("right"):
		$right.modulate = Color(1, 1, 0, 1)
	else:
		$right.modulate = Color(1, 1, 1, 1)
