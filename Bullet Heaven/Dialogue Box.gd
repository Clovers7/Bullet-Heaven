extends ColorRect

@export var dia_path = ""
@export var textSpeed = 0.05

@onready var dialogue

func _ready():
	$Timer.wait_time = textSpeed
	dialogue = getDialogue()

func getDialogue():
	var i = FileDialog.new()
	assert(i.file_exists(dia_path), "File path does not exist")
	
	i.file
