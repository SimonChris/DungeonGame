extends StaticBody3D

func getInteractMessage() -> String:
	return "(E) Listen"

func onInteract() -> void:
	$AudioStreamPlayer3D.play()
