extends Object

const Items = preload("res://scripts/items.gd")
var items

var stage
var materials
var age

func _init(stage, materials):
  self.items = Items.new()
  self.stage = stage
  self.materials = materials
  self.age = 0

func evolve():
  var r = randf()
  if r > 0.95:
    print("destroy")
    self.stage = 0
    # destroy life
  elif r > 0.7:
    print("choice")
    # choice event
  elif r > 0.5:
    print("up")
    self.stage += 1
    # move up
  elif r > 0.45:
    print("down")
    self.stage = int(max(self.stage, 0))
    # move down
  else:
    print("none")
    # none
  print("life evolve", stage, materials)
  self.age += 1
