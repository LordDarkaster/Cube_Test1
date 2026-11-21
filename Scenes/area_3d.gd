extends Area3D


func _on_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		get_tree().change_scene_to_file("res://Scenes/fp.tscn")
