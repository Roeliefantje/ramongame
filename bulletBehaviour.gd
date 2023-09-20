extends RigidBody2D

var TTL = 2.0
var timeAlive = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	timeAlive = 0.0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	timeAlive += delta
	if timeAlive > TTL:
		queue_free()
