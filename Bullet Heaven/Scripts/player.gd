extends CharacterBody2D

const invincibility_duration = 1.5
@export var speed = 300
@onready var d_cooldown = $DashTimer

func _ready():
	pass

func _process(_delta):
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

func _physics_process(delta):
	if Input.is_action_pressed("dash"):
		dash()

func dash():
	if d_cooldown.is_stopped():
		speed = 600
		$Timer.start()
		d_cooldown.start()

func _on_timer_timeout():
	speed = 300
