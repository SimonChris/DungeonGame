extends Node3D

func onInteract():
	$AnimationPlayer.play("emote-yes")
	
func onInteractTwo():
	$AnimationPlayer.play("die")
