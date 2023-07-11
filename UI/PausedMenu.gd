extends Node

func _input(event):
	if event.is_action_pressed("ui_accept"):
		var is_paused = get_parent().paused
		get_parent().paused = !is_paused
		get_parent().visible = !is_paused

func _on_ResumeBtn_pressed():
	self.visible = false
	get_parent().paused = false

func _on_QuitBtn_pressed():
	get_tree().quit()
