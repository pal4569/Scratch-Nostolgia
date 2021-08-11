extends Sprite

var speed = 50
var velocity = Vector2()

func _physics_process(delta):
	velocity = Vector2.ZERO
	velocity = position.direction_to(player.position) * speed
	velocity = move_and_slide(velocity)
