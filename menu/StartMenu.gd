extends Node2D

var simultaneous_scene = preload("res://main.tscn").instantiate()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	get_tree().root.add_child(simultaneous_scene)
	hide()
	
	
