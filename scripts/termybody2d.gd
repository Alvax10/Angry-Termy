extends CharacterBody2D

const JUMP_VELOCITY = -400.0

var GravityMukt : float = 1

func _physics_process(delta: float) -> void:
	
	if not is_on_floor():
		velocity += get_gravity() * delta * GravityMukt

	move_and_slide()
