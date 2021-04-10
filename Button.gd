extends Button


func _ready():
	track_notification($"/root/Panel/RichTextLabel".MODE.READY)	

func _enter_tree():
	track_notification($"/root/Panel/RichTextLabel".MODE.ENTER)

func _exit_tree():
	track_notification($"/root/Panel/RichTextLabel".MODE.EXIT)


func track_notification(mode):
	if $"/root/Panel/OptionButton".selected == mode:
		$"/root/Panel/RichTextLabel".ordered_texts.append(self.text)

