extends Node2D

func _ready():
	get_node("Level").hide()

func _on_Quit_pressed():
	get_tree().quit()

func _on_Play_pressed():
	get_node("MainMenu").hide()
	get_node("Level").show()

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

func _on_Back_pressed():
	get_node("Level").hide()
	get_node("MainMenu").show()
