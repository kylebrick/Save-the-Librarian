///@function        scr_cam_screen_shake(magnitude,frames)
///@param	{real}	magnitude	amount to shake by.
///@param	{real}	frames		amount of frames to shake for.
function scr_screen_shake() {
	var _m = argument0;
	var _f = argument1;
	with(obj_camera) {
		if(_m > shake_rem) {
			shake_len = _f;
			shake_rem = _m;
			shake_mag = _m;
		}
	}
}