extends Node
class_name InputManager
var myEnums : Enums

var InputState : int
var actions = {
	Up = myEnums.Inputs.UP,
	Down = myEnums.Inputs.DOWN,
	Tap = myEnums.Inputs.TAP
}
# VER DOCUMENTACION Y VER COMO AGREGAR EL TAP XD

# LO QUE PIDE EL PROFE DE BASES DE DATOS
# EL ASUNTO DEL MAIL [BASEDATOS2026] GRUPO X
# NOMBRE, APELLIDO Y DNI DE CADA MIEMBRO
# MAIL DEL PROFE: aalgorry@unc.edu.ar 

func getInput() -> int:
	var input : int = 0
	print( myEnums.Inputs.UP )
	if (Input.is_action_pressed("Up")):
		input |= actions.get("Up")
	
	if (Input.is_action_pressed("Down")):
		input |= actions.get("Down")

	return input
