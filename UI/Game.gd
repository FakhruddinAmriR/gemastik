extends Node2D

func _on_PlayBtn_pressed():
	get_node("LevelMenu").show()
	get_node("MainMenu").hide()

func _on_ExitBtn_pressed():
	get_tree().quit()

func _on_BackBtn_pressed():
	get_node("LevelMenu").hide()
	get_node("MainMenu").show()

func _on_Level1_pressed():
	get_tree().change_scene("res://Level/Level_1.tscn")

func _on_Level2_pressed():
	get_tree().change_scene("res://Level/Level_2.tscn")

func _on_Level3_pressed():
	get_tree().change_scene("res://Level/Level_3.tscn")

func _on_Level4_pressed():
	get_tree().change_scene("res://Level/Level_4.tscn")

func _on_Level5_pressed():
	get_tree().change_scene("res://Level/Level_5.tscn")
