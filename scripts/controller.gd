extends Node
@export var character : CharacterBody2D
@export var JumpHeight : float = 10

var jumpvel : float 

func _enter_tree() -> void:
	jumpvel = sqrt(2 * character.get_gravity().y * JumpHeight)

func Jump() -> void:
	character.velocity.y = jumpvel
	pass

func slide() -> void:
	character.velocity.y = -jumpvel
	pass

func throwAxe() ->void:
	pass
