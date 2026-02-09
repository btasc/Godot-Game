extends Camera3D


# Consts
var move_speed = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	handle_input(delta)
	
	


func handle_input(delta: float):
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
