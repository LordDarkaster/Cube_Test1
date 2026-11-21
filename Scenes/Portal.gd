extends Area3D

signal door_open

func _on_body_entered(body: Node3D) -> void:
	if "Box" in body.name:
		body.position = Vector3(14,-13,0)
		door_open.emit()
