extends GutTest

func test_placa_timer_liga_e_desliga():
	var placa = add_child_autofree(load("res://Scenes/placa_body_timer.gd").new())
	var corpo = autofree(Node3D.new())
	corpo.name = "Player"
	watch_signals(placa)
	placa._on_body_entered(corpo)
	assert_signal_emitted(placa, "turn_on")
	assert_signal_not_emitted(placa, "turn_off")
	await wait_seconds(5.1)
	assert_signal_emitted(placa, "turn_off")
	assert_false(placa.pressed)

func test_segunda_entrada_durante_o_timer_nao_reemite():
	var placa = add_child_autofree(load("res://Scenes/placa_body_timer.gd").new())
	var corpo = autofree(Node3D.new())
	corpo.name = "Box"
	watch_signals(placa)
	placa._on_body_entered(corpo)
	placa._on_body_entered(corpo)
	assert_signal_emit_count(placa, "turn_on", 1)
