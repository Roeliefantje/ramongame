extends RigidBody2D

var hp = 0
var maxHp = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	hp = maxHp
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func takeDamage(damage):
	hp -= damage
	if hp < 0:
		queue_free()

func _on_body_entered(body):
	print(body.get_type())
	hp -= 1
	body.queue_free()
	pass # Replace with function body.




func _on_area_2d_body_entered(body):
	# print(body.get_type())
	takeDamage(1)
	pass # Replace with function body.
