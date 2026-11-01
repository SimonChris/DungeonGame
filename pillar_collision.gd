extends StaticBody3D

var message : String = "(E) Adumbrate"

func getInteractMessage() -> String:
	return message

func onInteract() -> void:
	message = "The pillar awaits"
