extends Node

var time = 0
var rock_pos = PackedVector2Array()
var shadow_x
var shadow_y

# Called when the node enters the scene tree for the first time.
func _ready():
	time = $TotalTimer.time
	#var player = preload("res://player.tscn").instance()
	#player.position = Vector2(400, 350)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("time=", time)
	if time % 100 == 0:
		var shadow = preload("res://rock/rock.tscn").instantiate()
		while true:
			# generate new rock position
			shadow_x = randi_range(0, 750)
			shadow_y = randi_range(100, 550)
			# debug info
			print("x=", shadow_x, "y=", shadow_y)
			# check if the position not has a rock
			if not rock_pos.has(Vector2(shadow_x, shadow_y)):
				# set the shadow to new position
				shadow.position = Vector2(shadow_x, shadow_y)	
				rock_pos.append(Vector2(shadow_x, shadow_y))	
				add_child(shadow)
				break
	time += 1
