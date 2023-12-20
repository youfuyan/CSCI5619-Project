extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_pressed():
	# print("Button pressed")
	if(%Introduction_TextLabel.visible == true):
		%Introduction_TextLabel.visible = false
	if(%Bubble_sort_TextLabel.visible == true):
		%Bubble_sort_TextLabel.visible = false
	if(%Merge_sort_TextLabel.visible == true):
		%Merge_sort_TextLabel.visible = false
	if(%Quick_sort_TextLabel.visible == true):
		%Quick_sort_TextLabel.visible = false
	if(%Insertion_sort_TextLabel.visible == true):
		%Insertion_sort_TextLabel.visible = false
	self.visible = !self.visible

