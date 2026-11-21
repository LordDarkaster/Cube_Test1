extends MeshInstance3D

var open = false

func _door_open() -> void:
	if not open:
		while position.y <= 6.9:
			translate(Vector3(0,0.05,0))
			await get_tree().create_timer(0.01).timeout
		open = true
