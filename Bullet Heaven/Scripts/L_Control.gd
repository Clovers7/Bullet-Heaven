extends Control

@onready var L1 = $L1
@onready var L2 = $L2
@onready var L3 = $L3
@onready var counter = 1

## Called when the node enters the scene tree for the first time.
#func _ready():
#	L1.visible = false
#	L2.visible = false
#	L3.visible = false

## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	while counter < 4:
#		if Input.is_action_just_released("any"):
#			counter += 1

#func _process(delta):
#	if Input.is_mouse_button_pressed("any"):
#
