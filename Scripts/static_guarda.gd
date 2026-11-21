extends StaticBody3D

@onready var ray = $RayCast3D
@onready var eye = $Guarda_Head/Guarda_Eye.get_active_material(0)

var dir = -1
var alert = false

signal door_close
signal door_open

func _process(_delta: float) -> void:
	var body = ray.get_collider()
	if body != null:
		if "Player" in body.name:
			alert = true

func _on_area_guarda_body_entered(_body: Node3D) -> void:
	if alert == true:
		eye.set_albedo(Color(1,0,0,1))
		door_close.emit()

func _on_area_guarda_body_exited(_body: Node3D) -> void:
	if alert == true:
		alert = false
		eye.set_albedo(Color(0,1,0,1))
		door_open.emit()
