extends Spatial

func _ready():
  pass

func _on_body_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    print("body")
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))