extends Node3D

var isOpen = false
func _ready() -> void:
	pass # Replace with function body.

func onInteract() -> void:
	if !isOpen:
		$AnimationPlayer.play("open")
		$OpenSoundPlayer.play()
		isOpen = true
	else:
		$AnimationPlayer.play_backwards("open")
		$ClosingSoundPlayer.play()
		isOpen = false
