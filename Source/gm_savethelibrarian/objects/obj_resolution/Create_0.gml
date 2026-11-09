///@desc Init

//window_mouse_set_locked(true);

window_scale		= 5;
window_scale_min	= 1;
window_scale_max	= 7;
window_scale_amount	= 1;

instance_create_layer(-2,-2,"Border",obj_border);
window_set_size(global.game_width*window_scale,global.game_height*window_scale);
window_center();