extends StaticBody3D

@export var DoorFrame : Node3D

func getInteractMessage() -> String:
	if !DoorFrame.isOpen:
		return "(E) Open"
	else:
		return "(E) Close"

func onInteract() -> void:
	DoorFrame.onInteract()
