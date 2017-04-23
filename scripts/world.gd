extends Spatial

const SIZE = 15

var Cube = preload("res://mesh/cube.obj")
var House = preload("res://house.tscn")
var Pine = preload("res://tree_pine.tscn")
var Oak = preload("res://tree_oak.tscn")

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
  var blocks = []
  var count = 0
  for x in range(-size, size):
    var line_x = []
    blocks.append(line_x)
    for y in range(0, -size, -1):
      var line_y = []
      line_x.append(line_y)
      for z in range(-size, size):
        var relative = Vector3(x, y, z)
        var len = relative.length()
        if floor(len) <= size/2 and (ceil(len) > size/2 or y == 0):
          line_y.append(relative*2 + center)
          count += 1
        else:
          line_y.append(null)
  var multi = MultiMesh.new()
  multi.set_transform_format(MultiMesh.TRANSFORM_3D)
  multi.set_mesh(Cube)
  multi.set_instance_count(count)
  var i = 0
  for x in range(blocks.size()):
    var line_x = blocks[x]
    if line_x == null:
      continue
    for y in range(line_x.size()):
      var line_y = line_x[y]
      if line_y == null:
        continue
      for z in range(line_y.size()):
        var pos = line_y[z]
        if pos != null:
          var trans = Transform()
          trans = trans.translated(pos)
          multi.set_instance_transform(i, trans)
          i += 1
  var instance = MultiMeshInstance.new()
  instance.set_multimesh(multi)
  add_child(instance)

func _on_Area_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))
    cam.reselect()
