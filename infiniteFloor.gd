extends Node

var velocity = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var positions = []
	for child in get_children():
		var scale = child.scale.y
		var pos = child.position.y + velocity * delta
		if pos > scale:
			pos -= scale * 2
		child.position.y = pos
