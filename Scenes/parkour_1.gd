extends MeshInstance3D


func _on_placa_body_body_entered(_body: Node3D) -> void:
	set_visible(true)


func _on_placa_body_body_exited(_body: Node3D) -> void:
	set_visible(false)


func _on_placa_body_door_open() -> void:
	queue_free()
