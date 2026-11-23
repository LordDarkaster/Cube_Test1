extends GutTest

var player

func before_each():
	player = add_child_autofree(load("res://Scenes/Player.tscn").instantiate())

func test_unpick_solta_e_emite_not_using():
	watch_signals(player)
	player.picked_object = autofree(RigidBody3D.new())
	player.unpick_object()
	assert_null(player.picked_object)
	assert_signal_emitted(player, "not_using")

func test_unpick_sem_objeto_nao_emite():
	watch_signals(player)
	player.unpick_object()
	assert_signal_not_emitted(player, "not_using")

func test_pick_sem_colisao_nao_pega_nada():
	watch_signals(player)
	player.pick_object()
	assert_null(player.picked_object)
	assert_signal_not_emitted(player, "using")
