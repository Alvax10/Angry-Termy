extends Node

var currentState : State
@export var states : Dictionary[String, State]
@export var inputManager : InputManager
@export var eventBus : EventBus

func _ready() -> void:
	currentState = states["Running"]
	eventBus.listen(onEvent)

func _process(delta: float) -> void:
	var a = inputManager.getInput()
	onUpdate(a , delta)

func changeState(newState : String) -> void:
	currentState.exit()
	currentState = states[newState]
	currentState.enter()
	pass

func onEvent(event : int, name : String, params : Dictionary) -> void:
	currentState.onEvent(event, name, params)
	pass

func onUpdate(input : int, dt : float) -> void:
	currentState.update(input, dt);
