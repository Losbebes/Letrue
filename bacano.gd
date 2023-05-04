extends VehicleBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _physics_process(delta):
	if Input.is_action_pressed("MRU W"):
		engine_force = 30
		$AudioStreamPlayer.pitch_scale += 0.01
	if Input.is_action_just_released("MRU W"):
		engine_force = 0
		$AudioStreamPlayer.pitch_scale -= 0.1
	if Input.is_action_pressed("MRU S"):
		engine_force = -30
	if Input.is_action_just_released("MRU S"):
		engine_force = 0
	if Input.is_action_pressed("MRU A"):
		steering = -3
	if Input.is_action_just_released("MRU A"):
		steering = 0
	if Input.is_action_pressed("MRU D"):
		steering = 3
	if Input.is_action_just_released("MRU D"):
		steering = 0
	if Input.is_action_pressed("Reset"):
		position.x = 0
		position.y = 0
		position.z = 0
		rotation.x = 0
		rotation.y = 0
		rotation.z = 0
