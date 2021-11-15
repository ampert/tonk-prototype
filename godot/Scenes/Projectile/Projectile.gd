extends KinematicBody2D

const PROJECTILE_SPEED = 2000
var DIAGONAL_SPEED = 1414
var velocity = Vector2()
var direction = ""

func fire_projectile(pos_pass,dir_pass):
	direction = dir_pass
	position = pos_pass

func hide_projectile():
	position = Vector2(-100,-100)
	direction = ""
	velocity = Vector2()

func _physics_process(delta):
	match direction:
		"U":
			velocity = Vector2(0,-PROJECTILE_SPEED)
		"D":
			velocity = Vector2(0,PROJECTILE_SPEED)
		"L":
			velocity = Vector2(-PROJECTILE_SPEED,0)
		"R":
			velocity = Vector2(PROJECTILE_SPEED,0)
		"UL":
			velocity = Vector2(-DIAGONAL_SPEED,-DIAGONAL_SPEED)
		"UR":
			velocity = Vector2(DIAGONAL_SPEED,-DIAGONAL_SPEED)
		"DL":
			velocity = Vector2(-DIAGONAL_SPEED,DIAGONAL_SPEED)
		"DR":
			velocity = Vector2(DIAGONAL_SPEED,DIAGONAL_SPEED)
	var collision = move_and_collide(velocity * delta)
	if collision:
		match collision.collider.name:
			"NormalBox":
				velocity = Vector2()
				get_node("../Player").attack_status = "can_teleport"
