extends RichTextLabel

var MODE = {
	"READY": 0,
	"ENTER": 1,
	"EXIT": 2,
}
onready var panel = $"/root/Panel"
var text_before := "order of the overloaded function 								get called:"
var ordered_texts: Array

func _on_OptionButton_item_selected(_mode):
	ordered_texts = []
	
	$"/root/Panel/Scene".free()
	var new_scene: Node = load("res://Scene.tscn").instance()
	panel.add_child(new_scene, true)
	new_scene.set_name("Scene")
	
	var text_after := ""
	for t in ordered_texts:
		text_after += ("%s -> " % t)
	text_after.erase(text_after.length() - 4, 4)
	self.text = "%s\n%s" % [text_before, text_after]

