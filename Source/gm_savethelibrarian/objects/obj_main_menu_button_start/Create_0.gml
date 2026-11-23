///@desc Init

event_inherited();
x_to = xstart+move_off;

function _press_button() {
	
	//Start Game
	if(!instance_exists(obj_transition)) {
		var _trans			= instance_create_layer(-44,-44,"UI",obj_transition);
			_trans.room_to	= rm_002_opening;
	}
}