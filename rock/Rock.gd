extends RigidBody2D

var rock_img = preload("res://images/Rock1.png")
var clicking

# Called when the node enters the scene tree for the first time.
func _ready():
	rock_img = preload("res://images/Rock1.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	"""
	var is_rock = true
	# generate a new position for new rocks
	var shadow_posX = randi_range(0, 750)
	var shadow_posY = randi_range(100, 550)
	# check if the position already have a rock
	if rock_pos.has(Vector2(shadow_posX, shadow_posY)):
		# debug info
		print("x=", shadow_posX, " y=", shadow_posY)
		# set the rock image to the new position
		self.position = Vector2(shadow_posX, shadow_posY)
		rock_pos.append(Vector2(shadow_posX, shadow_posY))
		is_rock = false
		

func _on_visible_screen_notifer_2d_screen_exited():
	queue_free()
	"""
func _unhandled_input(event):
	if event.is_action_pressed('Click'):
		clicking = true
		if _on_mouse_entered():
			Global.score += 1
			var mouse_pos = event.position
			var collision_info = move_and_collide(mouse_pos)
			if collision_info:
				var collision_point = collision_info.get_position()
				#Global.collision_point = collision_point

		
func _on_player_hit():
	Global.game_over = true



func _on_mouse_entered():
	return true
