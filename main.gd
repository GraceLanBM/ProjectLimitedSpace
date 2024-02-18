extends Node

var simultaneous_scene = preload("res://menu/GameOverMenu.tscn").instantiate()
var time = 0
var rock_pos = PackedVector2Array()
var shadow_x = 0
var shadow_y = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	time = $TotalTimer.time
	$Player.start($StartPosition.position)
	$StartTimer.start()
	#var player = preload("res://player.tscn").instance()
	#player.position = Vector2(400, 350)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("time=", time)
	if time % 100 == 0:
		var shadow = preload("res://rock/rock.tscn").instantiate()
		while true:
			# generate new rock position
			shadow_x = randi_range(0, 20) * 40
			shadow_y = randi_range(0, 13) * 40 + 100
			# debug info
			print("x=", shadow_x, "y=", shadow_y)
			# check if the position not has a rock
			if not rock_pos.has(Vector2(shadow_x, shadow_y)):
				# set the shadow to new position
				print("set new pos")
				shadow.position = Vector2(shadow_x, shadow_y)	
				rock_pos.append(Vector2(shadow_x, shadow_y))	
				add_child(shadow)
				break
		
	time += 1
	if Global.game_over == true:
		Global.time = $TotalTimer.get_time()
		get_tree().root.add_child(simultaneous_scene)
		get_node("/root/Main").free()

