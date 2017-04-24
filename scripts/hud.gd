extends Node

func _ready():
  pass

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
      vis = !get_node(tab).is_visible()
    get_node(tab).set_visible(vis)
  
func set_funds(cash):
  get_node("funds/cash").set_text(str(cash))
  
func update_storage(id, amount):
  get_node("storage").update_storage(id, amount)
  
func display_message(message, time=5):
  get_node("messages").display_message(message, time)

func _on_combibator_button_pressed():
  var cam = get_tree().get_root().get_node("Game/Camera")
  var combinator = get_tree().get_root().get_node("Game/Combinator")
  cam.select(combinator, combinator.get_node("point"))

func _on_incubator_button_pressed():
  var cam = get_tree().get_root().get_node("Game/Camera")
  var incubator = get_tree().get_root().get_node("Game/Incubator")
  cam.select(incubator, incubator.get_node("point"))
