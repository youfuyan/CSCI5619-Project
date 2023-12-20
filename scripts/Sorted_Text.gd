extends MeshInstance3D


var index_0 = false
var index_1 = false
var index_2 = false
var index_3 = false
var index_4 = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_show()


func _on_area_0_entered(area):
	if area.is_in_group("index0"):
		index_0 = true


func _on_area_0_exited(area):
	if area.is_in_group("index0"):
		index_0 = false

func _on_area_1_entered(area):
	if area.is_in_group("index1"):
		index_1 = true

func _on_area_1_exited(area):
	if area.is_in_group("index1"):
		index_1 = false

func _on_area_2_entered(area):
	if area.is_in_group("index2"):
		index_2 = true

func _on_area_2_exited(area):
	if area.is_in_group("index2"):
		index_2 = false

func _on_area_3_entered(area):
	if area.is_in_group("index3"):
		index_3 = true

func _on_area_3_exited(area):
	if area.is_in_group("index3"):
		index_3 = false

func _on_area_4_entered(area):
	if area.is_in_group("index4"):
		index_4 = true

func _on_area_4_exited(area):
	if area.is_in_group("index4"):
		index_4 = false

func _show():
	if index_0 and index_1 and index_2 and index_3 and index_4:
		self.visible = true
	else:
		self.visible = false


