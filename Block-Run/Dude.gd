extends Sprite

var mousepositoion
var vel : Vector2 = Vector2()

onready var sprite  : Sprite = get_node("Sprite")

func _process(delta):
		mousepositoion = get_local_mouse_position()
		rotation+= mousepositoion.angle() * 0.1

