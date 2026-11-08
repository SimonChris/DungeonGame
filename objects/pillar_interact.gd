extends Node3D

signal interacted

func onInteract():
	interacted.emit()
