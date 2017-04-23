extends Node

var cash = 1000 setget set_cash, get_cash
var storage = {}

func _ready():
  _update_hud()
  
func get_cash():
  return cash

func set_cash(csh):
  cash = csh
  _update_hud()

func _update_hud():
  get_tree().get_root().get_node("Game/HUD/funds/cash").set_text(str(cash))