extends Control

const Items = preload("res://scripts/items.gd")

func _ready():
  var map = {"solid": get_node("tabs/*/items"),
             "gas": get_node("tabs/*/items"),
            "precursor": get_node("tabs/**/items"),
            "life": get_node("tabs/***/items")}
  var items = Items.new()
  for k in items.data.keys():
    var tree = map[k]
    var root = null
    if tree.get_root() == null:
      root = tree.create_item()
    else:
      root = tree.get_root()
    tree.set_columns(2)
    tree.set_column_title(0, "Item")
    tree.set_column_title(1, "Cost")
    tree.set_column_titles_visible(true)
    tree.set_column_expand(1, false)
    tree.set_column_min_width(1,40)
    tree.set_hide_root(true)
    tree.set_select_mode(Tree.SELECT_ROW)
    for i in range(items.data[k].size()):
      var dict = items.data[k][i]
      var id = dict["id"]
      var item = items.get(id)
      item.insert_in_shop(tree, root)

func _on_buy_pressed():
  var tab = get_node("tabs").get_current_tab_control()
  var tree = tab.get_node("items")
  var itm = tree.get_selected()
  if itm != null and itm.is_selected(0):
    var item = itm.get_metadata(0)
    var player = get_tree().get_root().get_node("Game/Player")
    if player.cash >= item["cost"]:
      player.add_item(item["id"], 1)
      player.cash -= item["cost"]
    else:
      pass