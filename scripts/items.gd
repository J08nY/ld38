extends Object

var data = null

func _init():
  var file = File.new()
  file.open("res://assets/shop.json", File.READ)
  var content = file.get_as_text()
  file.close()
  self.data = parse_json(content)

func get(id):
  for cat in self.data.keys():
    for item in self.data[cat]:
      if item["id"] == id:
        return item
  return null