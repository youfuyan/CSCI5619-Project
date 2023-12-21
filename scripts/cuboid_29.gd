extends MeshInstance3D

var speed = 1.0 # Speed of movement, can be adjusted
var initial_position = Vector3.ZERO
var target_position = Vector3.ZERO
var moving = false
var green_material: StandardMaterial3D
var red_material: StandardMaterial3D
var ligth_blue_material: StandardMaterial3D

# Called when the node enters the scene tree for the first time.
func _ready():
	initial_position = global_transform.origin
	green_material = StandardMaterial3D.new()
	green_material.albedo_color = Color(0, 1, 0)  # Green color

	red_material = StandardMaterial3D.new()
	red_material.albedo_color = Color(1, 0, 0)  # Red color

	# Set initial color
	ligth_blue_material = StandardMaterial3D.new()
	ligth_blue_material.albedo_color = Color(0.68, 0.85, 0.9) # Light blue color


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving:
		var direction = (target_position - global_transform.origin).normalized()
		var movement = direction * speed * delta
		# Update the current position towards the target position
		global_transform.origin += movement
		# Check if the target position is reached.
		if global_transform.origin.distance_to(target_position) < 0.01:
			global_transform.origin = target_position
			moving = false


func _on_area_entered(area):
	if area.is_in_group("index0"):
		# Calculate the target position.
		target_position = initial_position + Vector3(-2, 0, 0)
		moving = true
		self.material_override = red_material
	if area.is_in_group("index1"):
		# Calculate the target position.
		target_position = initial_position + Vector3(-1.5, 0, 0)
		moving = true
		self.material_override = red_material
	if area.is_in_group("index2"):
		# Calculate the target position.
		target_position = initial_position + Vector3(-1, 0, 0)
		moving = true
		self.material_override = red_material
	if area.is_in_group("index3"):
		# Calculate the target position.
		target_position = initial_position + Vector3(-0.5, 0, 0)
		moving = true
		self.material_override = green_material
	if area.is_in_group("index4"):
		# Calculate the target position.
		target_position = initial_position
		moving = true
		self.material_override = red_material

func _reset_button_pressed():
	# Reset the position of the cube.
	global_transform.origin = initial_position
	moving = false
	self.material_override = ligth_blue_material
