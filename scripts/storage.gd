extends Control

const Items = preload("res://scripts/items.gd")
var items
var tree

func _ready():
  self.tree = get_node("panel/items")
  self.tree.create_item()
  self.tree.set_columns(2)
  self.tree.set_column_title(0, "Item")
  self.tree.set_column_title(1, "Amount")
  self.tree.set_column_titles_visible(true)
  self.tree.set_column_expand(1, false)
  self.tree.set_column_min_width(1,60)
  self.tree.set_hide_root(true)
  self.tree.set_select_mode(Tree.SELECT_ROW)
  self.items = Items.new()

func get_selected():
  var itm = self.tree.get_selected()
  if itm != null and itm.is_selected(0):
    return itm.get_metadata(0)
  return null

func update_storage(id, amount):
  var root = self.tree.get_root()
  if root == null:
    return
  var node = root.get_children()
  while node != null:
    var meta = node.get_metadata(0)
    if meta["id"] == id:
      break
    node = node.get_next()
    
  if amount == 0:
    if node != null:
      root.remove_child(node)
      self.tree.update()
  else:
    if node == null:
      var item = items.get(id)
      node = item.insert_in_tree(tree, root)
    node.set_text(1, str(amount))
      
    