extends KinematicBody2D

const SPEED = 400.0
const GRAVITY = 90.0
const MAX_DOWN_SPEED = 1500
const JUMP_FORCE = 1300.0
const FLOOR = Vector2(0,-1)

const SHURIKEN_SPEED = 400

var velocity = Vector2()
var is_attacking = false
var is_looking_up = false

onready var sprite = $Sprite

func _physics_process(delta):
	
	# Character Movement
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if x_input != 0:
		sprite.flip_h = x_input < 0
		velocity.x = x_input * SPEED
	else:
		velocity.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = -JUMP_FORCE
	else:
		if Input.is_action_just_released("ui_accept") and velocity.y < -JUMP_FORCE / 3:
				velocity.y = -JUMP_FORCE / 3
	
	if velocity.y >= MAX_DOWN_SPEED:
		velocity.y = MAX_DOWN_SPEED
	else:
		velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity, FLOOR)
	
