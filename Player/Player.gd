extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const ACCEL = 50
const MAX_SPEED = 200
const JUMP_H = -550

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += GRAVITY
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = max(velocity.x - ACCEL, -MAX_SPEED)
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Walk")
	
	elif Input.is_action_pressed("ui_right"):
		velocity.x = min(velocity.x + ACCEL, MAX_SPEED)
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("Walk")
		
	else:
		$AnimatedSprite.play("Idle")
		velocity.x = lerp(velocity.x, 0, 0.2)
		
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			velocity.y = JUMP_H
	
	else:
		$AnimatedSprite.play("Jump")
	
	velocity = move_and_slide(velocity, UP)
	pass
