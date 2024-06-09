extends Node2D

@onready var MoveTime = $MoveTime

var direction = Vector2.ZERO

const STEP = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	MoveTime.start()


func _move():
	self.position += direction * STEP

func _unhandled_input(event):
	if event.is_action_pressed("Down"):
		direction = Vector2(0,1)
	if event.is_action_pressed("Left"):
		direction = Vector2(-1,0)
	if event.is_action_pressed("Right"):
		direction = Vector2(1,0)
	if event.is_action_pressed("Up"):
		direction = Vector2(0,-1)

func _on_move_time_timeout():
	_move()
