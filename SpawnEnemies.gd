extends Node2D

var enemy = preload("res://enemy.tscn")

var spawnDelay = 0.5
var currentCooldown = 0.0
var rng = 0
var spawnY = -300
# Called when the node enters the scene tree for the first time.
func _ready():
	rng = RandomNumberGenerator.new()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if currentCooldown <= 0.0:
		print("we get in here?")
		currentCooldown = spawnDelay
		var enemyInstance = enemy.instantiate()
		# enemyInstance.linear_velocity = Vector2(0.0, -1 * bulletSpeed)
		var x = rng.randf_range(-100.0, 100.0)
		enemyInstance.position = Vector2(x, spawnY)
		add_child(enemyInstance)
	else:
		currentCooldown -= delta
