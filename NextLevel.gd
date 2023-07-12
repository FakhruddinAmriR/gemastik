extends Area2D

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			print(str(int(get_tree().current_scene.name) + 1))
			get_tree().change_scene("res://Level/Level_" + str(int(get_tree().current_scene.name) + 1) + ".tscn")
