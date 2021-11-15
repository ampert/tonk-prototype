extends KinematicBody2D

const SPEED = 400.0
const GRAVITY = 90.0
const MAX_DOWN_SPEED = 1500
const JUMP_FORCE = 1300.0
const FLOOR = Vector2(0,-1)
const AIM_POSITION = 50

const SHURIKEN_SPEED = 400

var velocity = Vector2()
var projectile_reset = true
var direction = "none"
export var attack_status = "can_attack"
export var player_status = "Idle"
var can_move = true

onready var sprite = $Sprite

func _physics_process(_delta):
	cannot_move()
	if can_move:
		character_movement()
	aiming()
	attack()
	teleport()
	return_projectile()
	$Label.text = player_status
	$Label2.text = attack_status

func character_movement():
	# Character Movement
	var x_input = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	if x_input != 0:
		sprite.flip_h = x_input < 0
		velocity.x = x_input * SPEED
		player_status = "Running"
	else:
		velocity.x = 0
		player_status = "Idle"
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = -JUMP_FORCE
	else:
		player_status = "In Air"
		if Input.is_action_just_released("ui_accept") and velocity.y < -JUMP_FORCE / 3:
				velocity.y = -JUMP_FORCE / 3
	
	if velocity.y >= MAX_DOWN_SPEED:
		velocity.y = MAX_DOWN_SPEED
	else:
		velocity.y += GRAVITY
	
	velocity = move_and_slide(velocity, FLOOR)
	

func aiming():
	if Input.is_action_pressed("ui_up"):
		$Position2D.position = Vector2(0,-AIM_POSITION)
		direction = "U"
	if Input.is_action_pressed("ui_left"):
		$Position2D.position = Vector2(-AIM_POSITION,0)
		direction = "L"
	if Input.is_action_pressed("ui_right"):
		$Position2D.position = Vector2(AIM_POSITION,0)
		direction = "R"
	if Input.is_action_pressed("ui_down"):
		$Position2D.position = Vector2(0,AIM_POSITION)
		direction = "D"
	if Input.is_action_pressed("ui_up") && Input.is_action_pressed("ui_left"):
		$Position2D.position = Vector2(-AIM_POSITION,-AIM_POSITION)
		direction = "UL"
	if Input.is_action_pressed("ui_up") && Input.is_action_pressed("ui_right"):
		$Position2D.position = Vector2(AIM_POSITION,-AIM_POSITION)
		direction = "UR"
	if Input.is_action_pressed("ui_down") && Input.is_action_pressed("ui_left"):
		$Position2D.position = Vector2(-AIM_POSITION,AIM_POSITION)
		direction = "DL"
	if Input.is_action_pressed("ui_down") && Input.is_action_pressed("ui_right"):
		$Position2D.position = Vector2(AIM_POSITION,AIM_POSITION)
		direction = "DR"
	

func attack():
	if Input.is_action_just_pressed("ui_focus_next") && attack_status == "can_attack":
		attack_status = "in_flight"
		get_node("../Projectile").fire_projectile($Position2D.get_global_position(),direction)
	

func teleport():
	if Input.is_action_just_pressed("ui_select") && attack_status == "can_teleport":
		attack_status = "can_attack"
		position = get_node("../Projectile").position
		get_node("../Projectile").hide_projectile()
	

func return_projectile():
	if Input.is_action_just_pressed("ui_cancel") && attack_status == "can_teleport":
		attack_status = "can_attack"
		get_node("../Projectile").hide_projectile()
	

func cannot_move():
	if Input.is_action_pressed("ui_page_up") && player_status != "In Air":
		can_move = false
		player_status = "Aiming"
	else:
		can_move = true
	
