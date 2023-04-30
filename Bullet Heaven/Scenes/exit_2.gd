extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimationPlayer.play("idle")



func _on_next_area_entered(area):
	SceneTrans.change_scene_to_file("res://Scenes/tutscene3.tscn")
