extends Spatial

const SIZE = 15

var Cube = preload("res://cube.tscn")
var House = preload("res://house.tscn")
var Pine = preload("res://tree_pine.tscn")
var Oak = preload("res://tree_oak.tscn")
var cubes = Array()

func _enter_tree():
  var pn = Pine.instance()
  pn.translate(Vector3(2,1,2))
  add_child(pn)
  var ok = Oak.instance()
  ok.translate(Vector3(-2,1,2))
  add_child(ok)
  var hs = House.instance()
  hs.translate(Vector3(0,1,2))
  hs.rotate_y(PI/2)
  add_child(hs)
  _make_ball(SIZE, Vector3(0,0,0))

func _make_ball(size, center):
  var blocks = Array()
  for x in range(-size, size):
    var line_x = Array()
    blocks.append(line_x)
    for y in range(0, -size, -1):
      var line_y = Array()
      line_x.append(line_y)
      for z in range(-size, size):
        var relative = Vector3(x, y, z)
        if floor(relative.length()) <= size/2:
          var cube = Cube.instance()
          cube.translate(relative + center)
          cube.set_scale(Vector3(0.5, 0.5, 0.5))
          add_child(cube)
          line_y.append(cube)
        else:
          line_y.append(null)
          
func _on_click():
  var cam = get_tree().get_root().get_camera()
  cam.select(self, get_node("point"))