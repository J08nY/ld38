extends Spatial

var Cube = preload("res://mesh/cube.dae")
var House = preload("res://house.tscn")
var Pine = preload("res://tree_pine.tscn")
var Oak = preload("res://tree_oak.tscn")
var cubes = Array()

func _enter_tree():
  var offsets = [5, 3, 2, 1, 1, 0, 0, 0, 1, 1, 2, 3, 5]
  var hs = House.instance()
  var glass = load("res://incubator.tscn::1")
  hs.get_child(0).set_material_override(glass)
  add_child(hs)
  var pn = Pine.instance()
  pn.translate(Vector3(2,2,0))
  add_child(pn)
  var ok = Oak.instance()
  ok.translate(Vector3(-2,-2,0))
  add_child(ok)
  make_ball(13, Vector3(20,26,0))

func make_ball(size, center):
  var blocks = Array()
  for x in range(-size, size):
    var line_x = Array()
    blocks.append(line_x)
    for y in range(0, -size, -1):
      var line_y = Array()
      line_x.append(line_y)
      for z in range(-size, size):
        var relative = Vector3(2*x, 2*y, 2*z)
        if relative.length() <= size:
          var cube = Cube.instance()
          cube.translate(relative + center)
          add_child(cube)
          line_y.append(cube)
        else:
          line_y.append(null)