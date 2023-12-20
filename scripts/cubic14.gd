extends MeshInstance3D

var green_material: StandardMaterial3D
var red_material: StandardMaterial3D
var ligth_blue_material: StandardMaterial3D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Initialize materials
	green_material = StandardMaterial3D.new()
	green_material.albedo_color = Color(0, 1, 0)  # Green color

	red_material = StandardMaterial3D.new()
	red_material.albedo_color = Color(1, 0, 0)  # Red color

	# Set initial color
	ligth_blue_material = StandardMaterial3D.new()
	ligth_blue_material.albedo_color = Color(0.68, 0.85, 0.9) # Light blue color

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	if area.is_in_group("index1"):
		# change mesh color to green
		# print("Entered" + str(area))
		self.material_override = green_material
		# print("Change color to" + str(self.material_override))
	else :
		# change mesh color to red
		# print("Entered" + str(area))
		self.material_override = red_material
		# print("Change color to" + str(self.material_override))

func _on_area_exited(area):
	# change mesh color to light blue
	# print("Existed" + str(area))
	self.material_override = ligth_blue_material
	# print("Change color to" + str(self.material_override))



