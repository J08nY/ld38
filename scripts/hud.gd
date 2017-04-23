extends Node

func _ready():
  pass

func _on_ms_button_pressed():
  var visible = get_node("ms").is_visible()
  if visible:
    get_node("ms").set_visible(false)
  else:
    popup_shop()

func _on_storage_button_pressed():
  var visible = get_node("storage").is_visible()
  if visible:
    get_node("storage").set_visible(false)
  else:
    popup_storage()
    
func _popup(which):
  var tabs = ["ms", "storage"]
  for tab in tabs:
    get_node(tab).set_visible(tab == which)

func popup_storage():
  _popup("storage")
  
func popup_shop():
  _popup("ms")
    
func set_funds(cash):
  get_node("funds/cash").set_text(str(cash))
  
func update_storage(storage):
  get_node("storage").update_storage(storage)
