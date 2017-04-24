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
    
    if event.is_pressed():
      if event.scancode == KEY_H:
        var s = self.cam.get_selected()
        if s != null:
          get_node("Incubator").push_world(s)
      if event.scancode == KEY_N:
        #var w = Wrld.instance()
        var w = self.builder.combine(Vector3(0,0,0), [])
        w.set_scale(Vector3(0.02, 0.02, 0.02))
        add_child(w)
        get_node("Incubator").push_world(w)
      if event.scancode == KEY_Q:
        var w = get_node("World")
        if w != null:
          var pos = get_node("cmb2inc")
          w.set_translation(Vector3(0,0,0))
          remove_child(w)
          pos.add_child(w)
          get_node("AnimationPlayer").play("cmb2inc")
        

func _on_AnimationPlayer_animation_finished( name ):
  if name == "cmb2inc":
    var w = get_node("cmb2inc/World")
    var pos = get_node("cmb2inc")
    pos.remove_child(w)
    add_child(w)
    w.set_translation(pos.get_translation())
