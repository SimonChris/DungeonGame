@tool
extends Node3D

@export var closed : bool = true : set = set_closed, get = get_closed

func set_closed(value):
	closed = value
	$lid.visible = closed
	
func get_closed():
	return closed
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
		
