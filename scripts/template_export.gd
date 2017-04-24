extends "res://scripts/template.gd"

func _init().("res://assets/exporter.json"):
  pass

func template(world):
  var reviews = self.data["feedback"]
  return str(reviews[randi() % reviews.size()])
