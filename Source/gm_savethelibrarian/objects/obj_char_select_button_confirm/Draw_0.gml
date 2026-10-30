///@desc Confirm & Transition

draw_self();

image_xscale	= lerp(image_xscale,scale_x_to,scale_spd);
image_yscale	= lerp(image_yscale,scale_y_to,scale_spd);

if(global.pl_character != noone) {
	image_index = 1;
	y = ystart-2;
	
	if(place_meeting(x,y,obj_cursor)) {
		
		scale_x_to = hover_scale;
		scale_y_to = hover_scale;
		
		if(mouse_check_button_pressed(mb_left)) _press_button();
	}
	else {
		scale_x_to = 1;
		scale_y_to = 1;
	}
}
else image_index = 0;

//Functions
function _press_button() {
	scr_debug_msg("player selected",global.pl_character);
	room_goto_next();
	instance_destroy();
}