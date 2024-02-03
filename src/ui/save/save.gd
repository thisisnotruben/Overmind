extends Control

var play_focus_sfx := false

signal back_pressed
signal subcontrol_focused


func _on_back_pressed():
	emit_signal("back_pressed")

func _on_draw():
	play_focus_sfx = false
	$back.grab_focus()
	play_focus_sfx = true

func _on_focus_entered():
	if play_focus_sfx:
		emit_signal("subcontrol_focused")

func _on_save_pressed():
	pass # TODO: Replace with function body.

func _on_load_pressed():
	pass # TODO: Replace with function body.
