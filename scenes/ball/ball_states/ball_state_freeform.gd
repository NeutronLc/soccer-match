class_name BallStateFreeform
extends BallState


#const MAX_CAPTURE_HEIGHT := 25
#
#var time_since_freeform := Time.get_ticks_msec()


func _enter_tree() -> void:
	player_detection_area.body_entered.connect(on_player_enter.bind())
	#time_since_freeform = Time.get_ticks_msec()

func on_player_enter(body: Player) -> void:
	#if body.can_carry_ball() and ball.height < MAX_CAPTURE_HEIGHT:
	ball.carrier = body
		#body.control_ball()
	state_transition_requested.emit(Ball.State.CARRIED)
