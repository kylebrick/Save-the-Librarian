///@desc Self

//Draw
#region

draw_sprite_ext(
	sprite_index,image_index,
	x-camera_get_view_x(view_camera[0]),
	y-camera_get_view_y(view_camera[0]),
	x_scale,y_scale,image_angle,c_white,alpha
);

#endregion

//Type
switch(type) {
	case 0: {_state_default_idle();	break;}
	case 1: {_state_puzzle_idle();	break;}
}

//Functions
#region

function _state_default_idle()	{
	if(alpha < alpha_max) && (distance_to_point(mouse_x,mouse_y)<4) alpha += alpha_spd;
	sprite_index = cursor_default_spr;
	image_index	 = 0;
}
function _state_puzzle_idle()	{
	sprite_index = cursor_puzzle_spr;
	image_index	 = 0;
	
	//Not holding any pickup object
	if(global.pickup == noone) {
		if		(!_touching_pickup()) { //Idle
			_alpha_decr();
			_scale_decr();
		}
		else if	( _touching_pickup()) { //Hovering
			_alpha_incr();
			_scale_incr();
			if(mouse_check_button(mb_left)) {
				global.pickup = instance_nearest(x_pos,y_pos,par_pickup);
				with(global.pickup) {
					depth = other.depth+1;
					if(snap_node != noone) {
						snap_node.occupant	= noone;
						snap_node			= noone;
					}
					play_sfx();
				}
			}
		}
	}
	//Currently holding a pickup object
	else if(global.pickup != noone) {	//Holding
		_alpha_incr();
		_scale_incr();
		image_index = 1;
		if(mouse_check_button_released(mb_left)) {
			with(global.pickup) snap_attempt();
			global.pickup = noone;
		}
	}
}
function _alpha_incr()			{
	if(alpha < alpha_max) alpha += alpha_spd;
}
function _alpha_decr()			{
	if(alpha > alpha_min) alpha -= alpha_spd;
}
function _scale_incr()			{
	if(x_scale < scale_max) x_scale += scale_spd;
	if(y_scale < scale_max) y_scale += scale_spd;
}
function _scale_decr()			{
	if(x_scale > scale_min) x_scale -= scale_spd;
	if(y_scale > scale_min) y_scale -= scale_spd;
}
function _touching_pickup()		{
	if(place_meeting(x,y,par_pickup))	return true;
	else								return false;
}

#endregion