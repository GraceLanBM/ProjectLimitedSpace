extends StaticBody2D

var rock_pos = PackedVector2Array()

# Called when the node enters the scene tree for the first time.
func _ready():
	var rock_img = $AnimatedSprite2D.sprite_frames.get_animation_names()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var is_rock = true
	while is_rock:
		var shadow_posX = randi_range(0, 750)
		var shadow_posY = randi_range(100, 550)
		if rock_pos.has(Vector2(shadow_posX, shadow_posY)):
			rock_pos.append(Vector2(shadow_posX, shadow_posY))
			is_rock = false

func _on_visible_screen_notifer_2d_screen_exited():
	