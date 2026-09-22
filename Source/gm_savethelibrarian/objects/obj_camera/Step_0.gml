/// @description Update Camera

with(obj_player) other.cam_follow = self;

//Update Destination
if(instance_exists(cam_follow)) || (cam_follow != noone) {
	x_to = cam_follow.x;
	y_to = cam_follow.y;
}

//Update Position
x_pos += (x_to-x_pos)/cam_spd;
y_pos += (y_to-y_pos)/cam_spd;

//Clamp Camera
var _c_w_half = cam_w/2;
var _c_h_half = cam_h/2;
x_pos = clamp(x_pos,_c_w_half+cam_buff,room_width -_c_w_half-cam_buff);
y_pos = clamp(y_pos,_c_h_half+cam_buff,room_height-_c_h_half-cam_buff);

//Screen Shake
x_pos += random_range(-shake_rem,shake_rem);
y_pos += random_range(-shake_rem,shake_rem);
shake_rem = max(0,shake_rem-((1/shake_len)*shake_mag));

//Update Camera View
camera_set_view_pos(cam,x_pos-_c_w_half,y_pos-_c_h_half);