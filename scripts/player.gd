extends Node

const Items = preload("res://scripts/items.gd")
var items

var cash = 1000 setget set_cash, get_cash
var storage = {}
var inventory = {}

func _ready():
  self.items = Items.new()
  _update_funds()
  
func get_cash():
  return cash

func set_cash(csh):
  cash = csh
  _update_funds()
  
func add_item(id, amount):
  if storage.has(id):
    storage[id] += amount
  else:
    storage[id] = amount
  inventory[id] = items.get(id)
  _update_storage(id, storage[id])

func has_item(id, amount=1):
  return storage.has(id) and storage[id] >= amount
  
func get_item(id):
  return inventory[id]

func get_item_count(id):
  return storage[id]
  
func remove_item(id, amount):
  if storage.has(id) and storage[id] >= amount:
    storage[id] -= amount
    _update_storage(id, storage[id])

func _update_funds():
  get_tree().get_root().get_node("Game/HUD").set_funds(cash)

func _update_storage(id, amount):
  get_tree().get_root().get_node("Game/HUD").update_storage(id, amount)
  