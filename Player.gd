extends KinematicBody2D

export var max_speed := 300
export var speed := 300
export var jump := 300
export var max_jump := -550
export var gravity := 20

onready var animation_tree = get_node("AnimationTree")
onready var animation_mode = animation_tree.get("parameters/playback")

var velocity := Vector2.ZERO
var up := Vector2.UP

func _physics_process(delta):
	var horizontal_direct = (
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	)

	velocity.x = horizontal_direct * speed
	velocity.y = gravity * delta

	var is_jump := Input.is_action_just_pressed("ui_up") and is_on_floor()
	var is_idling := is_on_floor() and is_zero_approx(velocity.x)
	var is_walking := is_on_floor() and not is_zero_approx(velocity.x)

	velocity = move_and_slide(velocity, up)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
