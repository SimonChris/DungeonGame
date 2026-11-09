extends StaticBody3D

var interacted : bool = false
var message : String = "(E) Adumbrate"

func getInteractMessage() -> String:
	return message

func onInteract() -> void:
	if(interacted):
		return
		
	interacted = true
	get_parent().onInteract()
	$AudioStreamPlayer3D.play()
	message = "The pillar awaits"
