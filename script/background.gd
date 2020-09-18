extends Control

signal button_pressed(button_name)
signal button_released(button_name)


func _on_right_button_down():
	emit_signal("button_pressed", "right")


func _on_right_button_up():
	emit_signal("button_released", "right")


func _on_left_button_down():
	emit_signal("button_pressed", "left")


func _on_left_button_up():
	emit_signal("button_released", "left")


func _on_change_button_down():
	emit_signal("button_pressed", "change")


func _on_soft_drop_button_down():
	emit_signal("button_pressed", "soft_drop")


func _on_soft_drop_button_up():
	emit_signal("button_released", "soft_drop")


func _on_hard_drop_button_down():
	emit_signal("button_pressed", "hard_drop")


func _on_Button_button_down():
	emit_signal("button_pressed", "exit")


func _on_TextureButton_button_down():
	emit_signal("button_pressed", "level_up")


func set_button_states(playing):
	set_button_state("left", !playing)
	set_button_state("right", !playing)
	set_button_state("change", !playing)
	set_button_state("soft_drop", !playing)
	set_button_state("hard_drop", !playing)
	set_button_state("level_up", !playing)



func set_button_state(button, state):
	find_node(button).set_disabled(state)
	
