extends Area3D

var pressed := false

signal turn_on
signal turn_off

func _on_body_entered(body: Node3D) -> void:
	if "Box" in body.name or "Player" in body.name:
		if not pressed:
			pressed = true
			turn_on.emit()
			await get_tree().create_timer(5).timeout
			turn_off.emit()
			pressed = false
