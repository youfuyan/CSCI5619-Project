extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("Button pressed")
	self.visible = !self.visible

func _on_button_released():
	print("Button released")
	# change the visibility of the Spaital menue
