extends MeshInstance3D

func _door_close() -> void:
	while position.y > 0.1:
		translate(Vector3(0,-0.1,0))
		await get_tree().create_timer(0.01).timeout


func _on_static_guarda_door_open() -> void:
	while position.y < 6.1:
		translate(Vector3(0,0.1,0))
		await get_tree().create_timer(0.01).timeout
