extends Node

func _input(event):
	if event.is_action_pressed("ui_accept"):
		var is_paused = get_tree().paused
		get_tree().paused = !is_paused
		$".".visible = !is_paused
		

func _on_ResumeBtn_pressed():
	$".".visible = false
	pass
	
func _on_QuitBtn_pressed():
	get_tree().quit()
