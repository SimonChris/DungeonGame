extends Node3D

@export var state_manager : Node3D

func onInteract():
	$AnimationPlayer.play("emote-yes")
	
func onInteractTwo():
	$AnimationPlayer.play("die")
	
func getAdumbrationNumber():
	return state_manager.getAdumbrationNumber()
