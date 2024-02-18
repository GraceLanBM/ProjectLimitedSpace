extends RigidBody2D

#var time = 0
#var rock_pos = PackedVector2Array()

# Called when the node enters the scene tree for the first time.
func _ready():
	"""
	var rock_img = $AnimatedSprite2D.sprite_frames.get_animation_names()
	$AnimatedSprite2D.play(rock_img[0])
	"""
	pass

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
