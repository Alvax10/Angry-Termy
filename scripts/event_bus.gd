extends Node
class_name EventBus

var listeners : Array[Callable] = []

func listen(callback : Callable) -> void:
	listeners.append(callback)
	return

# EventBus.Emit("FeedBackEvent", "Particulas")
# EventBus.Emit("FeedBackEvent", "Sonido")
# EventBus.Emit("GameplayEvent", "StateChanged", "Running", "Jump")
func emit(eventName : String, params) -> void:
	for _calleable : Callable in listeners:
		_calleable.call(eventName, params)
	return
