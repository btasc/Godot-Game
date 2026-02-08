extends Node

# Constants
var background_speed = 100.0;
var jump_height = 10.0;
var background_repeat_coordinate = -100.0;

func _ready() -> void:
	var bird = $BirdSprite
	bird.position.x = 50
	bird.position.y = 50
	
	var background = $BackgroundSprite
	background.position.x = 50
	background.position.y = 50
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("jump"):
		$BirdSprite.position.y += jump_height
		$BackgroundSprite.position.x -= background_speed
	
	print("DELTA LETS GO")
	pass
