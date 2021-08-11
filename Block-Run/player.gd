extends KinematicBody2D

var velocity = Vector2()
const speed = 250

func get_input():
	look_at(get_global_mouse_position())
	velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
