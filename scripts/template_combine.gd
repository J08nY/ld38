extends "res://scripts/template.gd"

var bases = null

func _init().("res://assets/combinator.json"):
  self.bases = self.data["bases"]
  
func template(world):
  var base = self.bases[randi() % self.bases.size()]
  return self.replace_all(base, self.data)
