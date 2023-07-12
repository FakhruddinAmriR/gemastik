extends KinematicBody2D

const SPEED = 100
var direction = Vector2.LEFT

func _physics_process(delta):
	var velocity = direction * SPEED * delta
	move_and_collide(velocity)
	
func _on_Area2D_body_entered(body):
	var collider = body.get_collider()
	if collider is TileMap:
		direction *= -1
