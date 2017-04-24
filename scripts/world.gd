extends Spatial

export var SIZE = 15

const Cube = preload("res://mesh/cube.obj")
const GrayMat = preload("res://gray_mat.tres")
const GlassMat = preload("res://glass.tres")
const House = preload("res://house.tscn")
const Pine = preload("res://tree_pine.tscn")
const Oak = preload("res://tree_oak.tscn")
const Life = preload("res://scripts/life.gd")

var materials

var mass
var volume
var color
var gas_mass
var gas_volume
var gas_color

var total_mass
var total_volume

var cost

var surface_color

var mesh
var surface_mesh
var material
var glass_material
var surface_material

var blocks
var surface_blocks
var heights
var objects

var ball
var surface

var level
var life

func build():
  self.surface_color= self.color
  self.material = GrayMat.duplicate(true)
  self.material.set_albedo(self.color)
  self.glass_material = GlassMat.duplicate(true)
  self.glass_material.set_albedo(self.gas_color)
  self.surface_material = GrayMat.duplicate(true)
  self.surface_material.set_albedo(self.surface_color)
  get_node("CoverOther/Icosphere").set_material_override(self.glass_material)
  self.mesh = Cube.duplicate(true)
  for i in range(self.mesh.get_surface_count()):
    self.mesh.surface_set_material(i, self.material)
  self.surface_mesh = Cube.duplicate(true)
  for i in range(self.surface_mesh.get_surface_count()):
    self.surface_mesh.surface_set_material(i, self.surface_material)
  
  self.ball = _make_ball(SIZE, Vector3(0,0,0))
  self.level = 1
  self.surface = _make_surface(SIZE, Vector3(0,0,0), self.level)
  
  self.life = Life.new(0, self.materials)
  add_child(self.life)

func _make_ball(size, center):
  self.blocks = []
  self.heights = []
  self.objects = []
  var count = 0
  for x in range(-size, size):
    var line_x = []
    var height_x = []
    var obj_x = []
    self.blocks.append(line_x)
    self.heights.append(height_x)
    self.objects.append(obj_x)
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
        if y == 0:
          height_x.append(0)
          obj_x.append(null)
    
  var multi = _make_multi(self.blocks, count, self.mesh, self.color)
  var instance = MultiMeshInstance.new()
  instance.set_multimesh(multi)
  add_child(instance)
  return instance
  
func _make_surface(size, center, level):
  self.surface_blocks = []
  if level == 0:
    return
  var count = 0
  for x in range(-size, size):
    var line_x = []
    var height_x = self.heights[size + x]
    self.surface_blocks.append(line_x)
    for y in range(0, level):
      var line_y = []
      line_x.append(line_y)
      for z in range(-size, size):
        var relative = Vector3(x, y, z)
        var len = relative.length()
        var put = false
        if floor(len) <= size/2 and y > 0:
          if y == 1 or line_x[y-1][size + z] != null:
            var r = randf()
            if r > 0.6:
              put = true
              height_x[size + z] = y
              line_y.append(relative*2 + center)
              count += 1
        if !put:
          line_y.append(null)
  var multi = _make_multi(self.surface_blocks, count, self.surface_mesh, self.surface_color)
  var instance = MultiMeshInstance.new()
  instance.set_multimesh(multi)
  add_child(instance)
  return instance

func _make_multi(blcks, count, msh, clr):
  var multi = MultiMesh.new()
  multi.set_transform_format(MultiMesh.TRANSFORM_3D)
  multi.set_color_format(MultiMesh.COLOR_FLOAT)
  multi.set_mesh(msh)
  multi.set_instance_count(count)
  var i = 0
  for x in range(blcks.size()):
    var line_x = blcks[x]
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
          multi.set_instance_color(i, clr)
          i += 1
  return multi
  
func add_obj(type, x, z):
  var obj = type.instance()
  var height = self.heights[x + SIZE][z + SIZE]
  obj.set_translation(Vector3(x, height + 0.5, z) * 2)
  add_child(obj)
  self.objects[x + SIZE][z + SIZE] = obj
  
func get_obj(x, z):
  return self.objects[x + SIZE][z + SIZE]
  
func clear_objects():
  for x in range(self.objects.size()):
    var line_x = self.objects[x]
    for y in range(line_x.size()):
      var obj = line_x[y]
      if obj != null:
        remove_child(obj)
        line_x[y] = null

func evolve():
  self.level += 1
  remove_child(self.surface)
  self.surface = _make_surface(SIZE, Vector3(0,0,0), self.level)
  self.recolor_surface(Color(randi()))
  self.clear_objects()
  self.life.evolve()
  
func recolor_surface(new):
  self.surface_color = new
  self.surface_material.set_albedo(self.surface_color)

func _on_Area_input_event( camera, event, click_pos, click_normal, shape_idx ):
  if event.type == InputEvent.MOUSE_BUTTON and event.button_index == BUTTON_LEFT and event.is_pressed():
    var cam = get_tree().get_root().get_camera()
    cam.select(self, get_node("point"))
    cam.reselect()
