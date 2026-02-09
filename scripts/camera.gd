extends Camera3D


# Consts
var move_speed = 1
var look_sense = 0.002
var max_pitch = 1
var min_pitch = -1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	handle_pan(delta)

func _input(event):
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
		if event is InputEventMouseMotion:
			global_rotate(Vector3.UP, -event.relative.x * look_sense)
			rotate_object_local(Vector3.RIGHT, -event.relative.y * look_sense)
			rotation.x = clamp(rotation.x, min_pitch, max_pitch)
	
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	
func handle_pan(delta: float):
	var v = Vector3(0, 0, 0)
	
	var speed_mult = 1;
	
	if Input.is_action_pressed("camera_fast_move"):
		speed_mult = 3
	else:
		speed_mult = 1
	
	if Input.is_action_pressed("camera_pan_forward"):
		v.z -= move_speed * delta * speed_mult
		
	if Input.is_action_pressed("camera_pan_backward"):
		v.z += move_speed * delta * speed_mult
		
	if Input.is_action_pressed("camera_pan_left"):
		v.x -= move_speed * delta * speed_mult
		
	if Input.is_action_pressed("camera_pan_right"):
		v.x += move_speed * delta * speed_mult
		
	translate(v)
