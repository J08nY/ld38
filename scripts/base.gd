extends Node

var Game = preload("res://base.tscn")
var Wrld = preload("res://world.tscn")
var Incubator = preload("res://incubator.tscn")

var cam = null

func _ready():
  self.cam = get_node("Camera")

func _process(delta):
  pass
    
func _input(event):
  if event.type == InputEvent.MOUSE_BUTTON:
    if event.button_index == BUTTON_WHEEL_DOWN:
      self.cam.translate(Vector3(0,0,0.1))
      self.cam.reselect()
    elif event.button_index == BUTTON_WHEEL_UP:
      self.cam.translate(Vector3(0,0,-0.1))
      self.cam.reselect()
  if event.type == InputEvent.MOUSE_MOTION and event.button_mask == BUTTON_MASK_MIDDLE:
    get_node("Camera").rot_around(event.relative_x/(30))
  if event.type == InputEvent.KEY:
    if event.scancode == KEY_A:
      get_node("Camera").translate(Vector3(-0.1,0,0))
    if event.scancode == KEY_D:
      get_node("Camera").translate(Vector3(0.1,0,0))
    if event.scancode == KEY_S:
      get_node("Camera").translate(Vector3(0,-0.1,0))
    if event.scancode == KEY_W:
      get_node("Camera").translate(Vector3(0,0.1,0))
    if event.scancode == KEY_H:
      var s = get_node("Camera").get_selected()
      if s != null:
        get_node("Incubator").push_world(s)