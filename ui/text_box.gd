extends Control

var close_action : String

func _process(delta: float) -> void:
	if Input.is_action_just_pressed(close_action):
		visible = false

func setCloseAction(actionName : String):
	close_action = actionName

func setBoxText(text):
	$Label.text = text
	$Label.visible = true
		
func setButtonOneText(text):
	$Button.text = text
	$Button.visible = text != ""
