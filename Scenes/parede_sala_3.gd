extends MeshInstance3D

func _on_placa_body_body_entered(_body: Node3D) -> void:
	queue_free()
