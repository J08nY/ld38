extends Node

var data = null
var regex = null

func _init(path):
  var file = File.new()
  file.open(path, File.READ)
  var content = file.get_as_text()
  file.close()
  self.data = parse_json(content)
  self.regex = RegEx.new()
  self.regex.compile("/(.*?)/")

func replace_all(base, values):
  var mtch = self.regex.search(base)
  while mtch != null:
    var key = mtch.get_string(1)
    var replace = ""
    if values.has(key):
      var from = values[key]
      if typeof(from) == TYPE_DICTIONARY:
        replace = from[from.keys()[randi() % from.size()]]
      elif typeof(from) == TYPE_ARRAY:
        replace = from[randi() % from.size()]
      else:
        replace = str(from)
    base = self.regex.sub(base, replace)
    mtch = self.regex.search(base)
  return base