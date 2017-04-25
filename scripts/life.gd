extends Node

const Items = preload("res://scripts/items.gd")
const Events = preload("res://scripts/events.gd")
var items
var events

var stage
var materials
var age

var event

func _init(stage, materials):
  self.items = Items.new()
  self.events = Events.new()
  self.stage = stage
  self.materials = materials
  self.age = 0

func evolve():
  print("life evolve", stage, materials)
  var r = randf()
  if r > 0.95:
    print("destroy")
    self.stage = 0
    # destroy life
  elif r > 0.7:
    print("choice")
    self.event = self.events.get_rand_event(self.stage)
    var popup = get_tree().get_root().get_node("Game/HUD/popup")
    popup.set_text(event["text"])
    popup.set_options(event["options"])
    popup.set_life(self)
    popup.popup_centered()
    # choice event
  elif r > 0.5:
    print("up")
    self.stage = int(min(self.stage + 1, 6))
    # move up
  elif r > 0.45:
    print("down")
    self.stage = int(max(self.stage - 1, 0))
    # move down
  else:
    print("none")
    # none
  self.age += 1
  
func choice(i):
  if i == null:
    return
  var r = randf()
  var result
  if r > 0.3:
    result = "correct"
    self.stage = int(min(self.stage + 1, 6))
  else:
    result = "incorrect"
    self.stage = int(max(self.stage - 1, 0))
  get_tree().get_root().get_node("Game/HUD").display_message(self.event[result][i])
  get_tree().get_root().get_node("Game/Incubator").display_life()
  print(result)