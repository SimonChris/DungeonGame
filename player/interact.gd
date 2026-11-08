extends RayCast3D

@export var message: Control

func _physics_process(delta: float) -> void:
	var hit = get_collider()
	if is_colliding() && hit.has_method("getInteractMessage"):
		message.text = hit.getInteractMessage()
		message.visible = true
		if Input.is_action_just_pressed("interact"):
			hit.onInteract()
				
	elif message.visible:
		message.visible = false
