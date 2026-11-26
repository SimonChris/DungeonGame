extends StaticBody3D

@export var top_parent : Node3D
var alive : bool = true
var greeted : bool = false

var convoDict = {
	"Text": "Bob\n\nWelcome. I am the custodian of the tomb. If you want my help, you must adumbrate all the pillars that support the roof. Return when this is done.",
	"ButtonOne": "(Space) Okay"
}

var convo2Dict= {
	"Text": "Bob\n\n{0} pillars remain.",
	"ButtonOne": "(Space) I shall return"
}

var convo3Dict= {
	"Text": "Bob\n\nThe pillars have been adumbrated. The tomb is now open! To enter the tomb, you must take the leap of faith.",
	"ButtonOne": "(Space) Thank you"
}

func getInteractMessage() -> String:
	if !alive:
		return ""
		
	return "(E) Hello   (F) Kill"

func onInteract():
	if !alive:
		return
		
	top_parent.onInteract()
	if !greeted || top_parent.getAdumbrationNumber() == 4:
		greeted = true
		return convo3Dict
	elif top_parent.getAdumbrationNumber() > 0:
		convo2Dict.Text = "Bob\n\n{0} pillars remain.".format([4 - top_parent.getAdumbrationNumber()])
		return convo2Dict

	return convoDict;
	
func onInteractTwo() -> void:
	if !alive:
		return
	
	top_parent.onInteractTwo()
	alive = false
