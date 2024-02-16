extends Node3D

func _physics_process(delta):
	var velocidad = Vector3.ZERO
	if Input.is_action_pressed("ui_right"):
		velocidad.x += 1
	if Input.is_action_pressed("ui_left"):
		velocidad.x -= 1
	if Input.is_action_pressed("ui_up"):
		velocidad.z -= 1
	if Input.is_action_pressed("ui_down"):
		velocidad.z += 1

	translate(velocidad * delta)
