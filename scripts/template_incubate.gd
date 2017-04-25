extends "res://scripts/template.gd"

const Items = preload("res://scripts/items.gd")

var bases = null

func _init().("res://assets/incubator.json"):
  self.bases = self.data["bases"]
  
func template(world):
  var base = str(self.bases[randi() % self.bases.size()])
  var d = {}
  d["stage"] = self.data["stage"][world.life.stage]["name"]
  var misc = []
  for mat in world.materials:
    if mat in self.data["misc"]:
      misc += self.data["misc"][mat]
  d["misc"] = misc
  print(d)
  return self.replace_all(base, d)

func get_stage(stage):
  var stages = self.data["stage"]
  return stages[stage]