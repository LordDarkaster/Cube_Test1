extends Area3D

signal pressed

@onready var material = $"Placa_F_Mesh".get_active_material(0)
@onready var placas = $".."

var turn_off = true

func _on_body_entered(body: Node3D, extra_arg_0: int) -> void:
	if "Player" in body.name:
		pressed.emit(extra_arg_0)
		if placas.num == extra_arg_0:
			material.set_feature(0,true)

func _on_placas_turn_off() -> void:
	turn_off = true
	material.set_feature(0,false)
	
