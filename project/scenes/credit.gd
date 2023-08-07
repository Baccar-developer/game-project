extends Node2D

func _ready():
	print("ok")

func _on_timer_timeout():
	var fade_in = load("res://scenes/ui/fade_in_extended.tscn").instantiate()
	$Control.add_child(fade_in)
	fade_in.fade_finished.connect(get_tree().reload_current_scene)

func _get_out():
	get_tree().change_scene_to_file("res://scenes/credit.tscn")
