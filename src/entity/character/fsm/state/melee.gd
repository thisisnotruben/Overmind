extends CharacterState


func _init():
	type = CharacterStates.Type.MELEE

func enter():
	super.enter()
	play_quip()
	await get_tree().create_timer(0.5).timeout

	if active:
		var hit_scan := character.hit_spawn.get_collider()
		if character.is_foe(hit_scan):
			hit_scan.health -= character.melee_damage

		emit_signal("change_state", CharacterStates.Type.IDLE)
