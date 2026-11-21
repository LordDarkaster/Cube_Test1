extends StaticBody3D


func _on_area_3d_body_entered(body: Node3D) -> void:
	if "Box" in body.name:
		queue_free()
