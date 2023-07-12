extends KinematicBody2D

export var gravity = 98
export var speed = 100
var direction = Vector2.RIGHT

func _ready():
	$Sprite.flip_h = true

func _process(delta):
	var collision = move_and_collide(direction * speed * delta)

	if collision:
		var colliderNormal = collision.normal
		direction = direction.bounce(-direction) # Reverse the direction
		$Sprite.flip_h = !$Sprite.flip_h

