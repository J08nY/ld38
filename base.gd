extends Node

var World = preload("res://world.tscn")
var Incubator = preload("res://incubator.tscn")

func _ready():
  var inc = Incubator.instance()
  inc.translate(Vector3(-2, -2, -15))
  add_child(inc)

func _process(delta):
  pass
    
func _input(event):
  if event.type == InputEvent.MOUSE_BUTTON:
    if event.button_index == BUTTON_WHEEL_DOWN:
      get_node("Camera").translate(Vector3(0,0,0.1))
    elif event.button_index == BUTTON_WHEEL_UP:
      get_node("Camera").translate(Vector3(0,0,-0.1))
  if event.type == InputEvent.KEY:
    if event.scancode == KEY_A:
      get_node("Camera").translate(Vector3(-0.2,0,0))
    if event.scancode == KEY_D:
      get_node("Camera").translate(Vector3(0.2,0,0))
    if event.scancode == KEY_S:
      get_node("Camera").translate(Vector3(0,-0.2,0))
    if event.scancode == KEY_W:
      get_node("Camera").translate(Vector3(0,0.2,0))