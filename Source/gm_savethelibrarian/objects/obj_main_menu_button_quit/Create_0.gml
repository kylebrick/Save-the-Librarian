///@desc Init

event_inherited();
x_to = xstart+move_off;

function _press_button() {
	show_debug_message("quit");
	game_end();
}