extends Spatial

var Cube = preload("res://cube.dae")
var House = preload("res://house.dae")
var Pine = preload("res://tree_pine.dae")
var Oak = preload("res://tree_ball.dae")
var cubes = Array()

func _enter_tree():
  var offsets = [5, 3, 2, 1, 1, 0, 0, 0, 1, 1, 2, 3, 5]
  var hs = House.instance()
  add_child(hs)
  var pn = Pine.instance()
  pn.translate(Vector3(2,2,0))
  add_child(pn)
  var ok = Oak.instance()
  ok.translate(Vector3(-2,-2,0))
  add_child(ok)
#  for x in range(13):
#    var line = Array()
#    cubes.append(line)
#    for y in range(13):
#      if y >= offsets[x] and y <= (13 - offsets[x]):
#        var cube = Cube.instance()
#        var pos = Vector3(x*2, y*2, 0)
#        print(pos)
#        cube.translate(pos)
#        line.append(cube)
#        add_child(cube)
  make_ball(13, Vector3(20,26,0))
        
func make_ball(size, center):
  var blocks = Array()
  for x in range(-size, size):
    var line_x = Array()
    blocks.append(line_x)
    for y in range(-size, size):
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