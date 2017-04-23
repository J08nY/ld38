extends Control

var data = null

func _ready():
  var map = {"1": get_node("tabs/*/items"),
            "2": get_node("tabs/**/items"),
            "3": get_node("tabs/***/items"),
            "other": get_node("tabs/other/items")}
  var file = File.new()
  file.open("res://assets/shop.json", File.READ)
  var content = file.get_as_text()
  file.close()
  self.data = parse_json(content)
  for k in self.data.keys():
    var tree = map[k]
    var root = tree.create_item()
    tree.set_columns(2)
    tree.set_column_title(0, "Item")
    tree.set_column_title(1, "Cost")
    tree.set_column_titles_visible(true)
    tree.set_column_expand(1, false)
    tree.set_column_min_width(1,40)
    tree.set_hide_root(true)
    tree.set_select_mode(Tree.SELECT_ROW)
    for i in range(self.data[k].size()):
      var item = self.data[k][i]
      var itm = tree.create_item(root)
      itm.set_text(0, item["name"])
      itm.set_text(1, str(item["cost"]))
      itm.set_tooltip(0, item["desc"])
      itm.set_metadata(0, item)
      itm.set_collapsed(true)
      
      var desc = tree.create_item(itm)
      desc.set_text(0, item["desc"])
      desc.set_selectable(0, false)

func _on_buy_pressed():
  var tab = get_node("tabs").get_current_tab_control()
  var tree = tab.get_node("items")
  var itm = tree.get_selected()
  if itm != null and itm.is_selected(0):
    var item = itm.get_metadata(0)
    var player = get_tree().get_root().get_node("Game/Player")
    if player.cash >= item["cost"]:
      if player.storage.has(item["id"]):
        player.storage[item["id"]] += 1
      else:
        player.storage[item["id"]] = 1
      player.cash -= item["cost"]
    else:
      pass