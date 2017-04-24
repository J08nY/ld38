extends "res://scripts/template.gd"

var bases = null

func _init().("res://assets/combinator.json"):
  self.bases = self.data["bases"]
  
func template(world):
  var base = str(self.bases[randi() % self.bases.size()])
  var d = {}
  d["mass"] = str(world.mass) + " sextillion tons"
  d["volume"] = str(world.volume) + " trillion cubic metres"
  if (world.gas_mass > world.mass):
    d["type"] = "gaseous"
    d["type_comment"] = self.data["type_comment"]["gaseous"]
  else:
    d["type"] = "solid"
    d["type_comment"] = self.data["type_comment"]["solid"]
    
  if world.total_mass < 0.3:
    d["mass_comment"] = self.data["mass_comment"]["very_small"]
  elif world.total_mass < 0.5:
    d["mass_comment"] = self.data["mass_comment"]["small"]
  elif world.total_mass < 2:
    d["mass_comment"] = self.data["mass_comment"]["medium"]
  elif world.total_mass < 8:
    d["mass_comment"] = self.data["mass_comment"]["big"]
  elif world.total_mass < 20:
    d["mass_comment"] = self.data["mass_comment"]["huge"]
  else:
    d["mass_comment"] = self.data["mass_comment"]["yuge"]

  return self.replace_all(base, d)
