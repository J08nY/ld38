extends Object

const Wrld = preload("res://world.tscn")
const Items = preload("res://scripts/items.gd")

var items = null

func _init():
  self.items = Items.new()

func build(where):
  var w = Wrld.instance()
  w.set_scale(Vector3(0.02, 0.02, 0.02))
  w.set_translation(where)
  return w
  
func can_combine(materials):
  var has_solid = false
  var has_gas = false
  for id in materials:
    var category = self.items.category(id)
    if category == "solid":
      has_solid = true
    if category == "gas":
      has_gas = true
  return has_solid and has_gas
  
func combine(where, materials):
  var w = build(where)
  var mass = 0
  var volume = 0
  var color = Color(0.3,0.3,0.3)
  var gas_mass = 0
  var gas_volume = 0
  var gas_color = Color(0.5,0.5,0.6,0.4)
  var cost = 0
  
  for mat in materials:
    var item = self.items.get(mat)
    var category = self.items.category(mat)
    if category == "solid":
      mass += item.data["mass"]
      volume += item.data["volume"]
      var s = item.data["color"]
      color = color.blend(Color(s))

    if category == "gas":
      gas_mass += item.data["mass"]
      gas_volume += item.data["volume"]
      var s = item.data["color"]
      gas_color = gas_color.blend(Color(s))
    cost += item.data["cost"]
  
  w.materials = materials
  w.mass = mass
  w.volume = volume
  w.color = color
  w.gas_mass = gas_mass
  w.gas_volume = gas_volume
  w.gas_color = gas_color
  w.total_mass = mass + gas_mass
  w.total_volume = volume + gas_volume
  w.cost = cost
  w.call_deferred("build")
  return w
