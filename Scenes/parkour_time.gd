extends MeshInstance3D


func _on_placa_body_turn_on() -> void:
	set_visible(true)

func _on_placa_body_turn_off() -> void:
	set_visible(false)

func _on_placa_body_door_open() -> void:
	queue_free()
