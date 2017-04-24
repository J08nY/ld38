extends Spatial

const Builder = preload("res://scripts/builder.gd")
const CombinatorTemplate = preload("res://scripts/template_combine.gd")

var prev_pos = null
var panel = null
var world = null

var templater = null
var builder = null

func _ready():
  get_node("Area/Quad").get_material_override().set_texture(SpatialMaterial.DIFFUSE_LAMBERT, get_node("Viewport").get_texture())
  self.panel = get_node("Viewport/CombinatorPanel")
  self.templater = CombinatorTemplate.new()
  self.builder = Builder.new()
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
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))

func _on_panel_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("combine")
    var message = ""
    if self.world == null:
      var panel = get_node("Viewport/CombinatorPanel")
      var ids = panel.get_ids()
      if ids != null and ids.size() > 0 and self.builder.can_combine(ids):
        self.world = self.builder.combine(get_node("spawn").get_global_transform().origin, ids)
        get_tree().get_root().get_node("Game").add_child(self.world)
        panel.clear_all()
        message = self.templater.template(self.world)
        get_node("animation").play("click")
      else:
        message = "Cannot combine! You need solid and gaseous material."
    get_tree().get_root().get_node("Game/HUD").display_message(message, 15)

func _on_incubate_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("incubate")
    if self.world != null:
      get_node("animation").play("incubate")
      var incubator = get_tree().get_root().get_node("Game/Incubator")
      incubator.push_world(self.world)
      var cam = get_tree().get_root().get_node("Game/Camera")
      cam.select(incubator, incubator.get_node("point"))
      self.world = null
