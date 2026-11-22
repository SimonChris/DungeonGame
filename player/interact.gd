extends RayCast3D

@export var message: Control
@export var text_box: Control

func _physics_process(_delta: float) -> void:
	if text_box.visible:
		return;
		
	var hit = get_collider()
	if is_colliding() && hit.has_method("getInteractMessage"):
		message.text = hit.getInteractMessage()
		message.visible = true
		if Input.is_action_just_pressed("interact"):
			var interact_result = hit.onInteract()
			if interact_result == null:
				return
			
			text_box.setBoxText(interact_result["Text"])
			text_box.setButtonOneText(interact_result["ButtonOne"])
			text_box.setCloseAction("jump")
				
		elif Input.is_action_just_pressed("interact2") && hit.has_method("onInteractTwo"):
			hit.onInteractTwo()
			
	elif message.visible:
		message.visible = false
