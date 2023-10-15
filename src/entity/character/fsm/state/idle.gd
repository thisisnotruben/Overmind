extends CharacterState

@export_range(5.0, 120.0) var quip_min_time := 20.0
@export_range(5.0, 120.0) var quip_max_time := 120.0


func enter():
	super.enter()
	$quip_timer.start(randf_range(quip_min_time, quip_max_time))
	
func exit():
	super.exit()
	$quip_timer.stop()

func _on_quip_timer_timeout():
	$quip_timer.start(randf_range(quip_min_time, quip_max_time))
	play_quip()
