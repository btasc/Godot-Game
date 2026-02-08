extends CharacterBody2D

# Consts
var jump_height = 500.0
var gravity = 5.0

var delay = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("jump"):
		velocity.y = -jump_height
		
	velocity.y += gravity
	
	print(velocity.y)
	
	move_and_slide()
	pass
