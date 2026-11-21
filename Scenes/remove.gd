extends Area3D

signal door_open

func _on_body_entered(body: Node3D) -> void:
	if "Box" in body.name:
		body.queue_free()
		door_open.emit()
