extends Object

const icon_triangle = preload("res://assets/triangle.png")
const icon_waves = preload("res://assets/waves.png")
const icon_triangles = preload("res://assets/triangles.png")

var data = null

func _init():
  var file = File.new()
  file.open("res://assets/shop.json", File.READ)
  var content = file.get_as_text()
  file.close()
  self.data = parse_json(content)

class Item:
  extends Object

  var data
  var category
  var icon
  
  func _init(category, data, icon):
    self.category = category
    self.data = data
    self.icon = icon

  func id():
    return data["id"]
  
  func insert_in_tree(tree, parent=null):
    var item = tree.create_item(parent)
    item.set_text(0, data["name"])
    item.set_tooltip(0, data["desc"])
    item.set_metadata(0, data)
    item.set_icon_max_width(0, 20)
    if self.icon != null:
      item.set_icon(0, self.icon)
    return item
      
  func insert_in_shop(tree, parent=null):
    var item = self.insert_in_tree(tree, parent)
    item.set_text(1, str(data["cost"]))

func _get_icon(category):
  if category == "solid":
    return self.icon_triangle
  elif category == "gas":
    return self.icon_waves
  elif category == "precursor":
    pass
  elif category == "life":
    return self.icon_triangles

func get(id):
  for cat in self.data.keys():
    for item in self.data[cat]:
      if item["id"] == id:
        return Item.new(cat, item, self._get_icon(cat))
  return null
  
func category(id):
  for cat in self.data.keys():
    for item in self.data[cat]:
      if item["id"] == id:
        return cat