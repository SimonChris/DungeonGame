extends Node3D

@export var sarcophagus : Node3D

var adumbrations : int = 0

func _on_pillar_interacted() -> void:
	adumbrations += 1
	print("Adumbrations: " + str(adumbrations))
	if(adumbrations == 4):
		sarcophagus.closed = false
		print("All pillars adumbrated!")

func getAdumbrationNumber() -> int:
	return adumbrations
