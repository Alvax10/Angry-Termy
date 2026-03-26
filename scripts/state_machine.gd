extends Node

var currentState : State
var states : Array[State]
var inputManager : InputManager

func _ready() -> void:
	inputManager = $"../InputManager"
	states = [$Dead, $Running, $Jump, $ThrowAxe, $Air, $Slide, $Acrobat]
	currentState = states[1]

func _process(delta: float) -> void:
	var a = inputManager.getInput()
	onUpdate(a , delta)

func changeState(newState : State) -> void:
	pass

func onEvent(params : String) -> void:
	pass

func onUpdate(input : int, dt : float) -> void:
	currentState.update(input, dt);
