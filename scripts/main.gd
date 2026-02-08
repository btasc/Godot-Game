extends Node2D

# Constants
var background_speed = 100.0;
var jump_height = 10.0;
var background_repeat_coordinate = -100.0;

# Variables
var bird_vy = 0

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("jump"):
		bird_vy += jump_height
	
	pass
