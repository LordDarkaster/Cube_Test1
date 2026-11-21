extends MeshInstance3D

func call_elevator(value:bool):
	if value:
		while global_position.y > -13.9:
			translate(Vector3(0,-0.04,0))
			await get_tree().create_timer(0.01).timeout
	else:
		while global_position.y < 0.1:
			translate(Vector3(0,0.04,0))
			await get_tree().create_timer(0.01).timeout



func _on_area_elevator_2_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		if global_position.y <= -13.9:
			call_elevator(false)
		if global_position.y >= 0:
			call_elevator(true)


func _on_area_elevator_down_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		if global_position.y <= -13.9:
			call_elevator(false)
		if global_position.y >= 0:
			call_elevator(true)
