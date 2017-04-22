extends Camera

var selected = null

func _ready():
  pass
  
func select(what):
  if self.selected != what:
    set_translation(what.translation + Vector3(1,3,0))
  look_at(what.translation, Vector3(0,1,0))
  self.selected = what

func reselect():
  if self.selected != null:
    look_at(self.selected.translation, Vector3(0,1,0))

func rot_around(amount):
  if self.selected != null:
    var relative = self.translation - self.selected.translation
    var rotated = relative.rotated(Vector3(0,1,0), amount)
    set_translation(self.selected.translation + rotated)
    reselect()

func get_selected():
  return self.selected