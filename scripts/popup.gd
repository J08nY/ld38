extends PopupPanel

var life

func _ready():
  set_exclusive(true)
  
func set_text(text):
  var label = get_node("text")
  label.clear()
  label.push_align(RichTextLabel.ALIGN_CENTER)
  label.append_bbcode("[b]A thing has happened![/b]")
  label.newline()
  label.pop()
  label.add_text(text)
  label.newline()

func set_options(options):
  var label = get_node("text")
  var button = get_node("options")
  print("item count = ", button.get_item_count())
  for j in range(button.get_item_count()):
    button.remove_item(0)
  label.push_list(RichTextLabel.LIST_DOTS)
  var i = 0
  for opt in options:
    print(opt)
    button.add_item(opt)
    button.set_item_metadata(i, i)
    label.add_text(opt)
    label.newline()
    i += 1
  label.pop()
    
func set_life(life):
  self.life = life

func _on_ok_pressed():
  self.life.choice(get_node("options").get_selected_metadata())
  hide()
