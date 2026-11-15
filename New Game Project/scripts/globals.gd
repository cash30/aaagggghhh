extends Node
var shouoldBeDead = false
var shouldLaunch = false
var scene = "menu"



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if shouoldBeDead:
		get_tree().reload_current_scene()
		print("what a loser you died")
		shouoldBeDead = false
	pass
	
	if scene == "menu":
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	else:
		if scene == "lvl1":
			get_tree().change_scene_to_file("res://scenes/main.tscn")

