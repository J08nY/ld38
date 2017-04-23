extends Node

func _ready():
  pass

func _on_ms_button_pressed():
  var visible = get_node("ms").is_visible()
  get_node("ms").set_visible(!visible)
  if !visible:
    get_node("storage").set_visible(false)

func _on_storage_button_pressed():
  var visible = get_node("storage").is_visible()
  get_node("storage").set_visible(!visible)
  if !visible:
    get_node("ms").set_visible(false)
