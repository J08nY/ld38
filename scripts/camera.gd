extends InterpolatedCamera

var selected = null

func _ready():
  set_target(get_parent().get_node("overview"))
  self.selected = get_parent().get_node("center")
  
func select(what, new_target):
  set_target(new_target)
  if self.selected != what:
    set_interpolation_enabled(true)
    #set_translation(what.translation + Vector3(1,3,0))
  self.selected = what

func reselect():
  if self.selected != null:
    set_interpolation_enabled(false)
    look_at(self.selected.translation, Vector3(0,1,0))

func rot_around(amount):
  if self.selected != null:
    var relative = self.translation - self.selected.translation
    var rotated = relative.rotated(Vector3(0,1,0), amount)
    set_translation(self.selected.translation + rotated)
    reselect()

func get_selected():
  return self.selected