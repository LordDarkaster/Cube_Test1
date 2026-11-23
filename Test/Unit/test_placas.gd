extends GutTest

var placas

func before_each():
	placas = autofree(load("res://Scenes/placas.gd").new())

func test_sequencia_correta_incrementa():
	placas.press(1)
	placas.press(2)
	assert_eq(placas.num, 2)

func test_placa_errada_reseta_e_emite_turn_off():
	watch_signals(placas)
	placas.press(1)
	placas.press(3)
	assert_eq(placas.num, 0)
	assert_signal_emitted(placas, "turn_off")

func test_nove_placas_abre_a_porta():
	watch_signals(placas)
	for i in range(1, 10):
		placas.press(i)
	placas._process(0.0)
	assert_signal_emitted(placas, "door_open")

func test_repetir_a_mesma_placa_reseta():
	placas.press(1)
	placas.press(1)
	assert_eq(placas.num, 0)
