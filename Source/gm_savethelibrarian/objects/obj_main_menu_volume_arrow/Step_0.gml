///@desc Clicked -> Incr/Decr.

if(point_in_rectangle(
	global.cursor.x,global.cursor.y,
	bbox_left,bbox_top,bbox_right,bbox_bottom
)) {

	scale_x_to = hover_scale_x;
	scale_y_to = hover_scale_y;
	
	if(mouse_check_button_pressed(mb_left)) {
		if(vol_bar != noone) {
			scale_x = select_scale_x;
			scale_y = select_scale_y;
			with(vol_bar) {
				switch(other.facing) {
					case  1: { //Right
						if(marker_pos < marker_pos_max) marker_pos++;
						var _vol = marker_pos/(marker_pos_max-marker_pos_min);
						_adjust_volume(_vol);
						break;
					}
					case -1: { //Left
						if(marker_pos > marker_pos_min) marker_pos--;
						var _vol = marker_pos/(marker_pos_max-marker_pos_min);
						_adjust_volume(_vol);
						break;
					}
					default: break;
				}
				
			}
		}
	}
}
else {
	scale_x_to = 1;
	scale_y_to = 1;
}
	
//Functions
function _adjust_volume(_vol) {
	switch(object_index) {
		case obj_main_menu_volume_master: {
			global.vol_master = _vol;
			break;
		}
		case obj_main_menu_volume_music: {
			global.vol_music = _vol;
			break;
		}
		case obj_main_menu_volume_sfx: {
			global.vol_sfx = _vol;
			break;
		}
		default: break;
	}
}