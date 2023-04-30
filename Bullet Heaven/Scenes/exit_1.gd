extends Node2D


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimationPlayer.play("idle")

func _on_next_area_entered(area):
	SceneTrans.change_scene_to_file("res://Scenes/tutscene2.tscn")
