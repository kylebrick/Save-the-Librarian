///@desc Init

event_inherited();
x_to = xstart-move_off;

function _press_button() {
	var _del_min = del_min;
	var _del_max = del_max;
	var _del_sec = random_range(_del_min,_del_max);
	
	with(par_main_menu_button) {
		if(!alarm[1]) alarm[1] = global.game_spd*_del_sec;
	}
	with(par_main_menu_volume) {
		if(!alarm[0]) alarm[0] = global.game_spd*_del_sec;
	}
	with(obj_main_menu_options_bgr) {
		if(!alarm[0]) alarm[0] = global.game_spd*_del_sec;
	}
}