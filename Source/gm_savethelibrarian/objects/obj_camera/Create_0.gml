/// @desc Init

//Movement
x_pos = xstart; x_to = x_pos; x_spd = 0;
y_pos = ystart; y_to = y_pos; y_spd = 0;

//Camera
cam				= view_camera[0];
cam_follow		= noone;
cam_w			= camera_get_view_width	(cam);
cam_h			= camera_get_view_height(cam);
cam_buff		= 0;
cam_spd			= 6;
cam_spd_orig	= cam_spd;

//Screen Shake
shake_rem		= 0;
shake_len		= 0;
shake_mag		= 0;

//Init Position
with(obj_player) other.cam_follow = self;
if(instance_exists(cam_follow)) || (cam_follow != noone) {
	x_pos = cam_follow.x;
	y_pos = cam_follow.y;
}
camera_set_view_pos(cam,x_pos-cam_w/2,y_pos-cam_h/2);



scr_debug_msg("cam_x",x_pos);
scr_debug_msg("cam_y",y_pos);