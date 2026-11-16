extends Control

var close_action : String

func _ready() -> void:
	$Button1.visible = false
	$Button2.visible = false
	$Button3.visible = false

func _process(delta: float) -> void:
	if !visible:
		return
		
	if Input.is_action_just_pressed(close_action):
		visible = false

func setCloseAction(actionName : String):
	close_action = actionName

func setBoxText(text):
	$Label.text = text
	$Label.visible = true
		
func setButtonOneText(text):
	$Button1.text = text
	$Button1.visible = text != ""
