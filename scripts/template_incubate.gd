extends "res://scripts/template.gd"

func _init().("res://assets/incubator.json"):
  pass

func get_stage(stage):
  var stages = self.data["stages"]
  return stages[stage]