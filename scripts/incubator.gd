extends Spatial

var worlds = []

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
  print("pushing")
  for x in range(4):
    for y in range(2):
      print("h")
      if self.worlds[x][y] == null:
        print("set")
        set_world(x, y, world)
        return

func get_world(x, y):
  return self.worlds[x][y]

func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self)

func _on_panel_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT:
    print("panel")
