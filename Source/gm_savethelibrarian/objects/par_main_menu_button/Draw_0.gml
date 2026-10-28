///@desc Activate

if(awake) {
	x				= lerp(x,x_to,move_spd);
	y				= lerp(y,y_to,move_spd);
	image_xscale	= lerp(image_xscale,scale_x_to,scale_spd);
	image_yscale	= lerp(image_yscale,scale_y_to,scale_spd);
	
	if(place_meeting(x,y,obj_cursor)) {
		scale_x_to = hover_scale;
		scale_y_to = hover_scale;
		if(mouse_check_button_pressed(mb_left)) _press_button();
	}
	else {
		scale_x_to = 1;
		scale_y_to = 1;
	}
	
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}