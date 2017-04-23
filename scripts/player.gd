extends Node

var cash = 1000 setget set_cash, get_cash
var storage = {}

func _ready():
  _update_funds()
  _update_storage()
  
func get_cash():
  return cash

func set_cash(csh):
  cash = csh
  _update_funds()
  
func add_item(id, item, amount):
  if storage.has(id):
    storage[id] += amount
  else:
    storage[id] = amount
  _update_storage()

func has_item(id, amount=1):
  return storage.has(id) and storage[id] >= amount
  
func remove_item(id, amount):
  if storage.has(id) and storage[id] >= amount:
    storage[id] -= amount
  _update_storage()

func _update_funds():
  get_tree().get_root().get_node("Game/HUD").set_funds(cash)

func _update_storage():
  get_tree().get_root().get_node("Game/HUD").update_storage(storage)
  