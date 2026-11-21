extends RayCast3D

@onready var label = $"../Ui/Label"
@onready var player = $"../../.."

var using = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	var obj = self.get_collider()
	
	if self.is_colliding() and obj.is_in_group("Interact"):
		#CASO RAYCAST ESTEJA COLIDINDO COM UM OBJETO INTERAGIVEL;
		label.set_text("Interagir (E)")
		label.visible = true
	elif self.is_colliding() and obj.is_in_group("Pickable") and using == false:
		#CASO RAYCAST ESTEJA COLIDINGO COM UM OBJETO PEGAVEL;
		label.set_text("Pegar (LMB)")
		label.visible = true
		
	elif player.picked_object != null:
		label.set_text("F - Arremessar")
		label.set_visible(true)
	
	else:
		#CASO NÃO ESTEJA COLINDO OU COLIDINDO COM ALGO NEM INTERAGIVEL NEM PEGAVEL;
		label.visible = false

func _on_player_using() -> void:
	using = true

func _on_player_not_using() -> void:
	using = false
