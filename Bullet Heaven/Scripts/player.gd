extends CharacterBody2D

const invincibility_duration = 1.5
@export var speed = 300

func _ready():
	pass

func _physics_process(_delta):
	velocity = Vector2()
	
	if Input.is_action_pressed("down"):
		velocity.y += speed
	if Input.is_action_pressed("up"):
		velocity.y -= speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_just_pressed("right"):
		rotation_degrees = 90
	if Input.is_action_just_pressed("left"):
		rotation_degrees = -90
	if Input.is_action_just_pressed("up"):
		rotation_degrees = 0
	if Input.is_action_just_pressed("down"):
		rotation_degrees = 180
	move_and_slide()
