extends RayCast3D

@export var message: Control

func _physics_process(delta: float) -> void:
	if is_colliding():
		var hit = get_collider()
		if(hit.has_method("getInteractMessage")):
			message.text = hit.getInteractMessage()
			message.visible = true
			if Input.is_action_just_pressed("interact"):
				hit.onInteract()	
			
	elif message.visible:
		message.visible = false
