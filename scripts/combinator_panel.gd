extends Panel

const Items = preload("res://scripts/items.gd")

var items = null
var tree

func _ready():
  self.items = Items.new()
  self.tree = get_node("tree")
  self.tree.create_item()
  self.tree.set_columns(2)
  self.tree.set_column_title(0, "Item")
  self.tree.set_column_title(1, "Amount")
  self.tree.set_column_titles_visible(true)
  self.tree.set_column_expand(1, false)
  self.tree.set_column_min_width(1,60)
  self.tree.set_hide_root(true)
  self.tree.set_select_mode(Tree.SELECT_ROW)
  set_process_input(true)
  
func _input(event):
  print(event)

func _on_Tree_gui_input( ev ):
  #print(ev)
  pass
  
func get_ids():
  var ids = []
  var root = self.tree.get_root()
  if root == null:
    return ids
  var node = root.get_children()
  while node != null:
    ids.append(node.get_metadata(0)["id"])
    node = node.get_next()
  return ids
  
func clear_all():
  var root = self.tree.get_root()
  if root == null:
    return
  var node = root.get_children()
  while node != null:
    root.remove_child(node)
    node = node.get_next()
  self.tree.update()

func _on_add_pressed():
  var player = get_tree().get_root().get_node("Game/Player")
  var storage = get_tree().get_root().get_node("Game/HUD/storage")
  
  print(player.storage)
  print(storage.get_selected())
  
  var item = storage.get_selected()
  if item != null and player.has_item(item["id"]):
    var itm = player.get_item(item["id"])
    player.remove_item(item["id"], 1)
    var root = self.tree.get_root()
    var line = itm.insert_in_tree(tree, root)
    line.set_text(1, "1")

func _on_remove_pressed():
  var player = get_tree().get_root().get_node("Game/Player")
  var item = self.get_selected()
  if item != null:
    print(item)
    var node = self.tree.get_selected()
    node.deselect(0)
    print(node)
    var root = self.tree.get_root()
    root.remove_child(node)
    self.tree.update()
    player.add_item(item["id"], 1)

func _on_storage_pressed():
  get_tree().get_root().get_node("Game/HUD").popup("storage")

func get_selected():
  var root = self.tree.get_root()
  if root == null:
    return null
  var itm = root.get_children()
  while itm != null:
    if itm.is_selected(0):
      return itm.get_metadata(0)
    itm = itm.get_next()
  return null