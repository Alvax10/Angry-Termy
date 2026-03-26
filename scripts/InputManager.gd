extends Node
class_name InputManager

var InputState : int
var actions = {
	Up = 1,
	Down = 2,
	Tap = 4,
	"1" = "Up",
	"2" = "Down",
	"4" = "Tap"
}
# VER DOCUMENTACION Y VER COMO AGREGAR EL TAP XD

# LO QUE PIDE EL PROFE DE BASES DE DATOS
# EL ASUNTO DEL MAIL [BASEDATOS2026] GRUPO X
# NOMBRE, APELLIDO Y DNI DE CADA MIEMBRO
# MAIL DEL PROFE: aalgorry@unc.edu.ar 

func getInput() -> int:
	var input : int = 0
	if (Input.is_action_pressed("Up")):
		input |= actions.get("Up")
	
	if (Input.is_action_pressed("Down")):
		input |= actions.get("Down")

	return input
