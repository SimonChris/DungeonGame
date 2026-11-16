extends StaticBody3D

@export var top_parent : Node3D
var alive : bool = true

func getInteractMessage() -> String:
	if !alive:
		return ""
		
	return "(E) Hello   (F) Kill"

func onInteract() -> void:
	if !alive:
		return
		
	top_parent.onInteract()
	
func onInteractTwo() -> void:
	if !alive:
		return
	
	top_parent.onInteractTwo()
	alive = false
	
