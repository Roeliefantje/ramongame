extends CharacterBody2D

var speed = 300.0
var bullet = preload("res://bullet.tscn")
var parentScene = null
var bulletSpeed = 200.0
var offset = -30
var fireCooldown = 0.1
var currentCooldown = 0.0

func _ready():
	parentScene = get_parent()

func _process(delta):
	movePlayer(delta)
	if currentCooldown <= 0:
		shootBullet()
		currentCooldown = fireCooldown
	else:
		currentCooldown -= delta
func shootBullet():
	var bulletInstance = bullet.instantiate()
	bulletInstance.linear_velocity = Vector2(0.0, -1 * bulletSpeed)
	bulletInstance.position = Vector2(position.x, position.y + offset)
	if parentScene:
		parentScene.add_child(bulletInstance)

func movePlayer(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_left"):
		direction = Vector2.LEFT
	
	if Input.is_action_pressed("move_right"):
		direction = Vector2.RIGHT
	
	velocity = direction * speed
	move_and_slide()
