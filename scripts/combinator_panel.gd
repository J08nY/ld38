extends Panel

func _ready():
  set_process_input(true)
  
func _input(event):
  print(event)

func _on_Tree_gui_input( ev ):
  #print(ev)
  pass

func _on_Tree_mouse_entered():
  print("enter")
