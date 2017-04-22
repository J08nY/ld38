extends Spatial

var prev_pos = null

func _ready():
  get_node("Area/Quad").get_material_override().set_texture(SpatialMaterial.DIFFUSE_LAMBERT, get_node("Viewport").get_texture())
  set_process_input(true)

func _on_Area_input_event( camera, event, click_pos, click_normal, shape_idx ):
  var pos = get_node("Area").get_global_transform().affine_inverse()*click_pos
  # Convert to 2D
  if pos.y <= 0.9 or pos.y >= 1.1:
    return
  pos.x = (pos.x + 1)*200
  pos.z = (-pos.z + 1)*200
  var pos2 = Vector2(pos.z, pos.x)
  event.pos = pos2
  event.global_pos = pos2
  if self.prev_pos == null:
    self.prev_pos = pos2
  if event.type == InputEvent.MOUSE_MOTION:
    event.relative_pos = pos2 - self.prev_pos
  self.prev_pos = pos2
  get_node("Viewport").input(event)

func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))

func _on_panel_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("panel")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))