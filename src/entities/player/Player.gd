extends KinematicBody2D

export var speed = 200
var velocity = Vector2()


func _physics_process(delta):
	get_input()
	move_and_slide(velocity)

func get_input():
	velocity = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		
	velocity = velocity.normalized() * speed
