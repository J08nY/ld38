extends Control

var title
var text

func _ready():
  var file = File.new()
  file.open("res://assets/howto.json", File.READ)
  var content = file.get_as_text()
  file.close()
  var data = parse_json(content)
  self.title = data["title"]
  self.text = data["text"]
  get_node("panel/text").set_bbcode("[b]" + self.title + "[/b]\n\n" + self.text)
  #get_node("panel/text").add_text(self.text)