extends GutTest

func test_elevador_sobe_ate_14():
	var elev = MeshInstance3D.new()
	elev.set_script(load("res://Scripts/elevador_Up.gd"))
	add_child_autofree(elev)
	await elev.call_elevator(true)
	assert_between(elev.global_position.y, 14.0, 14.1)

func test_porta1_so_abre_uma_vez():
	var porta = MeshInstance3D.new()
	porta.set_script(load("res://Scripts/porta1.gd"))
	add_child_autofree(porta)
	await porta._door_open()
	var y = porta.position.y
	await porta._door_open()
	assert_eq(porta.position.y, y)
