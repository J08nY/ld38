extends Spatial

var worlds = []
var selected_pos = null
var selected = null

func _enter_tree():
  for x in range(4):
    var line = []
    self.worlds.append(line)
    for y in range(2):
      line.append(null)

func set_world(x, y, world):
  self.worlds[x][y] = world
  var pos = get_node("spawns/" + str(x) + "-" + str(y))
  world.set_translation(pos.global_transform.origin)

func push_world(world):
  for x in range(4):
    for y in range(2):
      if self.worlds[x][y] == null:
        set_world(x, y, world)
        return true
  return false

func get_world(x, y):
  return self.worlds[x][y]

func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))

func _on_panel_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("panel")
    get_node("animation").play("click")
    if self.selected_pos != null:
      var w = get_world(self.selected_pos.x, self.selected_pos.y)
      if w != null:
        print(w)

func _on_cylinder_input_event( camera, event, click_pos, click_normal, shape_idx, node, pos ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print(node, pos, get_node(node))
    self.selected = get_node(node)
    self.selected_pos = pos
    self.selected.material_override.set_albedo(Color(0.8,0.3,0.3))


