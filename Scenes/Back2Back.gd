extends Area3D


func _on_body_entered(body: Node3D) -> void:
	if "Box" in body.name:
		await get_tree().create_timer(2).timeout
		for object in get_overlapping_bodies():
			if object.name == "Box":
				body.position = Vector3(-14,1,-14)
