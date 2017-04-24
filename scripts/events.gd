extends "res://scripts/template.gd"

var choices

func _init().("res://assets/events.json"):
  self.choices = self.data["choice"]

func get_rand_event(stage):
  var avail = []
  for i in range(self.choices.size()):
    var choice = self.choices[i]
    if stage in choice["stages"]:
      avail.append(choice)
  if avail.size() > 0:
    return avail[randi() % avail.size()]
  else:
    return null
    
func get_event(id):
  for i in range(self.choices.size()):
    var choice = self.choices[i]
    if choice["id"] == id:
      return choice
