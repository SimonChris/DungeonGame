extends Control

var close_action : String
@export var message_box : Control

func _ready() -> void:
	$Button1.visible = false
	$Button2.visible = false
	$Button3.visible = false

func _process(_delta: float) -> void:
	if !visible:
		return
		
	if Input.is_action_just_pressed(close_action):
		visible = false

func setCloseAction(actionName : String):
	close_action = actionName

func setBoxText(text):
	$Label.text = text
	$Label.visible = true
	visible = true
	message_box.visible = false
		
func setButtonOneText(text):
	$Button1.text = text
	$Button1.visible = text != ""
