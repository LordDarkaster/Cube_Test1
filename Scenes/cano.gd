extends MeshInstance3D

@onready var box = $"../../../Box2"

func _process(_delta: float) -> void:
	if box.position.y <= 14.7:
		box.position = Vector3(0,28.6,-18.5) 

func _on_placa_body_body_entered(body: Node3D) -> void:
	if "Player" in body.name:
		box.position = Vector3(0,19,-18.5)
