extends Spatial

const GrayMat = preload("res://gray_mat.tres")
const IncubatorTemplate = preload("res://scripts/template_incubate.gd")

var template

var worlds = []
var selected_pos = null
var selected = null

var mat_selected = null
var mat_unselected = null

func _ready():
  for x in range(4):
    self.worlds.append(null)
  self.mat_selected = GrayMat.duplicate(true)
  self.mat_selected.set_albedo(Color(0.2, 0.2, 0.2))
  self.mat_unselected = GrayMat.duplicate(true)
  self.template = IncubatorTemplate.new()

func set_world(i, world):
  self.worlds[i] = world
  var pos = get_node("spawns/" + str(i))
  world.set_translation(pos.get_global_transform().origin)

func push_world(world):
  for x in range(4):
    if self.worlds[x] == null:
      set_world(x, world)
      return true
  return false

func get_world(x):
  return self.worlds[x]
  
func display_life():
  if self.selected_pos != null:
    var w = self.get_world(self.selected_pos.x)
    get_tree().get_root().get_node("Game/HUD").display_message(self.template.template(w), 15)
  
func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))

func _on_right_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("export")
    if self.selected_pos != null:
      var w = get_world(self.selected_pos.x)
      if w != null:
        get_node("animation").play("right")
        var exporter = get_tree().get_root().get_node("Game/Exporter")
        exporter.push_world(w)
        self.worlds[self.selected_pos.x] = null
        self.selected.set_material_override(self.mat_unselected)
        self.selected = null
        self.selected_pos = null
        var cam = get_tree().get_root().get_node("Game/Camera")
        cam.select(exporter, exporter.get_node("point"))
    
func _on_left_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("evolve")
    var message = "Cannot evolve, no world spot selected!"
    if self.selected_pos != null:
      var w = get_world(self.selected_pos.x)
      if w != null:
        get_node("animation").play("left")
        var before = w.life.stage
        w.evolve()
        var after = w.life.stage
        if before != after:
          message = self.template.template(w)
        else:
          message = null
      else:
        message = "Cannot evolve, no world!"
    get_tree().get_root().get_node("Game/HUD").display_message(message)

func _on_cylinder_input_event( camera, event, click_pos, click_normal, shape_idx, node, pos ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("pos ",pos)
    var new = get_node(node)
    if self.selected != null:
      self.selected.set_material_override(self.mat_unselected)
    
    if self.selected == new:
      self.selected.set_material_override(self.mat_unselected)
      self.selected_pos = null
      self.selected = null
    else:
      self.selected = new
      self.selected_pos = pos
      self.selected.set_material_override(self.mat_selected)


