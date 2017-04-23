extends Panel

var Items = preload("res://scripts/items.gd")
var items = null

func _ready():
  self.items = Items.new()
  set_process_input(true)
  
func _input(event):
  print(event)

func _on_Tree_gui_input( ev ):
  #print(ev)
  pass
  
func get_items():
  pass

func _on_add_pressed():
  var player = get_tree().get_root().get_node("Game/Player")
  var storage = get_tree().get_root().get_node("Game/HUD/storage")
  
  print(player.storage)
  print(storage.get_selected())
  
  if player.has_item(storage.get_selected()):
    print("has")
    player.remove_item(storage.get_selected(), 1)

func _on_remove_pressed():
  pass # replace with function body


func _on_storage_pressed():
  get_tree().get_root().get_node("Game/HUD").popup_storage()
