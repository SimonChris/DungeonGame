extends StaticBody3D

@export var top_parent : Node3D
var alive : bool = true

var convoDict = {
	"Text": "Bob\n\nWelcome. I am the custodian of the tomb. If you want my help, you must adumbrate all the pillars that support the roof. Return when this is done.",
	"ButtonOne": "(Space) Okay"
}

func getInteractMessage() -> String:
	if !alive:
		return ""
		
	return "(E) Hello   (F) Kill"

func onInteract():
	if !alive:
		return
		
	top_parent.onInteract()
	return convoDict;
	
func onInteractTwo() -> void:
	if !alive:
		return
	
	top_parent.onInteractTwo()
	alive = false
	
