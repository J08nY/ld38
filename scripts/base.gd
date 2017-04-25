extends Node

const Wrld = preload("res://world.tscn")
const Builder = preload("res://scripts/builder.gd")

var cam = null
var builder = null

func _ready():
  randomize()
  self.cam = get_node("Camera")
  self.builder = Builder.new()
    
func _input(event):
  if event.type == InputEvent.MOUSE_BUTTON:
    if event.button_index == BUTTON_WHEEL_DOWN:
      self.cam.translate(Vector3(0,0,0.1))
      self.cam.reselect()
    elif event.button_index == BUTTON_WHEEL_UP:
      self.cam.translate(Vector3(0,0,-0.1))
      self.cam.reselect()
    elif event.button_index == BUTTON_RIGHT:
      self.cam.reset()
  if event.type == InputEvent.MOUSE_MOTION and event.button_mask == BUTTON_MASK_MIDDLE:
    self.cam.rot_around(event.relative_x/(30))
    
  if event.type == InputEvent.KEY:
    if event.scancode == KEY_A:
      self.cam.translate(Vector3(-0.1,0,0))
    if event.scancode == KEY_D:
      self.cam.translate(Vector3(0.1,0,0))
    if event.scancode == KEY_S:
      self.cam.translate(Vector3(0,-0.1,0))
    if event.scancode == KEY_W:
      self.cam.translate(Vector3(0,0.1,0))
    
func _on_AnimationPlayer_animation_finished( name ):
  if name == "cmb2inc":
    var w = get_node("cmb2inc/World")
    var pos = get_node("cmb2inc")
    pos.remove_child(w)
    add_child(w)
    w.set_translation(pos.get_translation())
