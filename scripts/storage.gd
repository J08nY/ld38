extends Control

var Items = preload("res://scripts/items.gd")

var items
var storage = {}
var tree

func _ready():
  self.items = Items.new()
  self.tree = get_node("panel/items")
  self.tree.create_item()
  self.tree.set_columns(2)
  self.tree.set_column_title(0, "Item")
  self.tree.set_column_title(1, "Amount")
  self.tree.set_column_titles_visible(true)
  self.tree.set_column_expand(1, false)
  self.tree.set_column_min_width(1,50)
  self.tree.set_hide_root(true)
  self.tree.set_select_mode(Tree.SELECT_ROW)

func _update_item(id, amount):
  var child = self.tree.get_root().get_children()
  while child != null:
    var meta = child.get_metadata(0)
    if meta == id:
      if amount == 0:
        self.tree.get_root().remove_child(child)
      else:
        child.set_text(1, str(amount))
      return
    child = child.get_next()
  
  
func _add_item(id, amount):
  var root = self.tree.get_root()
  var item = self.tree.create_item(root)
  item.set_text(0, self.items.get(id)["name"])
  item.set_text(1, str(amount))
  item.set_metadata(0, id)

func update_storage(update):
  for k in update.keys():
    print("key: ", k)
    if self.storage.has(k):
      if self.storage[k] != update[k]:
        _update_item(k, update[k])
      if update[k] == 0:
        self.storage.erase(k)
      else:
        self.storage[k] = update[k]
    else:
      self.storage[k] = update[k]
      _add_item(k, update[k])
    
    
func get_selected():
  var itm = self.tree.get_selected()
  if itm != null and itm.is_selected(0):
    return itm.get_metadata(0)
  return null
