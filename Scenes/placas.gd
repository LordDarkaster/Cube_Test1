extends Node3D

var num := 0

signal door_open
signal turn_off

func _process(_delta: float) -> void:
	print(num)
	if num >= 9:
		door_open.emit()
		queue_free()


func press(value:int):
	if value == num+1:
		num += 1
		print(num)
	else:
		num = 0
		turn_off.emit()
