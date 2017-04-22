extends StaticBody

var cube = null
var selected = false
var mat = SpatialMaterial.new()

signal on_click

func _ready():
  self.cube = get_child(0)
  self.cube.material_override = self.mat
  connect("on_click", get_parent(), "_on_click")
  
func _input_event(camera, event, click_pos, click_normal, shape_idx):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    if self.selected:
      self.mat.set_albedo(Color(0.5,0.3,0.3))
    else:
      self.mat.set_albedo(Color(0.3,0.5,0.3))
    self.selected = !self.selected
    emit_signal("on_click")
