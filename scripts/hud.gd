extends Node

func _ready():
  var view = get_tree().get_root().get_viewport()
  view.connect("size_changed", self, "_on_size_changed", [view])

func _on_ms_button_pressed():
  _toggle("ms")

func _on_storage_button_pressed():
  popup("storage")
  
func _on_help_button_pressed():
  popup("help")
    
func _toggle(which):
  var visible = get_node(which).is_visible()
  get_node(which).set_visible(!visible)

func popup(which):
  var tabs = ["storage", "help"]
  for tab in tabs:
    var vis = false
    if tab == which:
      vis = !get_node("right/" + tab).is_visible()
    get_node("right/" + tab).set_visible(vis)
  
func set_funds(cash):
  get_node("right/funds/cash").set_text(str(cash))
  
func update_storage(id, amount):
  get_node("right/storage").update_storage(id, amount)
  
func display_message(message, time=5):
  get_node("messages").display_message(message, time)

func _select_machine(machine):
  var cam = get_tree().get_root().get_camera()
  var node = get_tree().get_root().get_node("Game/" + machine)
  cam.select(node, node.get_node("point"))

func _on_combinator_button_pressed():
  self._select_machine("Combinator")

func _on_incubator_button_pressed():
  self._select_machine("Incubator")
  
func _on_exporter_button_pressed():
  self._select_machine("Exporter")

func _on_size_changed(viewport):
  var size = viewport.get_size()
  var right = get_node("right")
  right.set_position(Vector2(size.x, 0))
  
  var left_bottom = get_node("left_bottom")
  left_bottom.set_position(Vector2(0, size.y))


