extends CharacterBody3D

const SPEED = 3.0
const JUMP_VELOCITY = 5

var time_since_last_step = Time.get_ticks_msec()
const STEP_DURATION : int = 750

@export var teleport_target : Node3D

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("teleport"):
		position = teleport_target.position
		
	if Input.is_action_just_pressed("mouse_toggle"):
		if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
			Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		else:
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			
	if Input.mouse_mode != Input.MOUSE_MODE_CAPTURED:
		return
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
	#if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		$jump_player.play()

	# Get the input direction and handle the movement/deceleration.
	var input_dir := Input.get_vector("left", "right", "forward", "backward")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	
	var horizontal_velocity := Vector3(velocity.x, 0, velocity.z)
	if horizontal_velocity.length_squared() > 0.1 and is_on_floor():
		if Time.get_ticks_msec() - time_since_last_step > STEP_DURATION:
			$step_player.play()
			time_since_last_step = Time.get_ticks_msec()
	
	if position.y < -25:
		position = Vector3(6.0, 2.6, -1.0)
		#get_tree().quit()
