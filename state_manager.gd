extends Node3D

var adumbrations : int = 0

func _on_pillar_interacted() -> void:
	adumbrations += 1
	print("Adumbrations: " + str(adumbrations))
