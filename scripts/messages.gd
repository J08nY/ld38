extends Control

var count = 0
var labels = []
var runs = []
var lengths = []

func _ready():
  set_process(true)
  
func _process(delta):
  var to_remove = []
  for i in range(count):
    var run = runs[i]
    var len = lengths[i]
    var label = labels[i]
    var far = run + delta
    if far >= (3*len/4):
      label.set_modulate(Color(1,1,1,0.3))
    elif far >= len/2:
      label.set_modulate(Color(1,1,1,0.5))
    if far >= len:
      to_remove.append(i)
    else:
      runs[i] += delta
  for i in to_remove:
    var label = labels[i]
    remove_child(label)
    label.queue_free()
    labels.remove(i)
    runs.remove(i)
    lengths.remove(i)
    count -= 1

func display_message(message, time):
  var label = Label.new()
  label.set_text(message)
  add_child(label)
  
  if count > 0:
    var offset = label.get_size().y
    for i in range(count):
      var lab = labels[i]
      var lab_pos = lab.get_global_position()
      lab_pos.y += offset
      lab.set_global_position(lab_pos)
  
  labels.push_back(label)
  runs.push_back(0)
  lengths.push_back(time)
  count+=1