extends Area3D

signal door_open

func _on_body_entered(body: Node3D) -> void:
	if "Box" in body.name or "Player" in body.name:
		door_open.emit()
