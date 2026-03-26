extends State

func update(inputs : int, delta : float) -> void:
	var jumping : bool = (inputs & 1) != 0
	var slide : bool = (inputs & 2) != 0
	var throw : bool = (inputs & 4) != 0

	print(jumping)
	return
