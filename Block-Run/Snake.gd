extends KinematicBody2D

var velocity = Vector2()
const speed = 100

func get_input():
	look_at(Globals.player_pos)
	velocity = Vector2(speed, 0).rotated(rotation)

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
