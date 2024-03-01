extends ComputerToggle

@export var area3d: Area3D = null


func _input(event: InputEvent):
	if event.is_action_pressed("interact") \
	and _player != null and area3d != null and disabled \
	and area3d.get_overlapping_bodies().size() - 1 == 0:
		disabled = false
	super._input(event)
