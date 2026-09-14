///@desc Inc. or Dec. Aspect Ratio

if(keyboard_check_pressed(vk_add)) && (window_scale < window_scale_max) {
	window_scale += window_scale_amount; set_window_size();
}
else if	(keyboard_check_pressed(vk_subtract)) && (window_scale > window_scale_min) {
	window_scale -= window_scale_amount; set_window_size();
}

function set_window_size() {
	window_center();
	if(window_scale < window_scale_max) {
		clamp(window_scale,window_scale_min,window_scale_max);
		window_set_size(global.game_width*window_scale,global.game_height*window_scale);
		
	}
	else if(window_scale >= window_scale_max) window_set_fullscreen(true);
	window_center();
}