extends Node3D

signal door_open

func interact():
	door_open.emit()
