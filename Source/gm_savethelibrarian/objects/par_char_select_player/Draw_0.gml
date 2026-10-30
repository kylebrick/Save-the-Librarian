///@desc Activate

if(awake) {
	x				= lerp(x,x_to,move_spd);
	y				= lerp(y,y_to,move_spd);
	image_xscale	= lerp(image_xscale,scale_x_to,scale_spd);
	image_yscale	= lerp(image_yscale,scale_y_to,scale_spd);
	
	if(place_meeting(x,y,obj_cursor)) {
		
		y = y_to-1;
		
		scale_x_to = hover_scale;
		scale_y_to = hover_scale;
		
		if(mouse_check_button_pressed(mb_left)) _press_button();
	}
	else {
		scale_x_to = 1;
		scale_y_to = 1;
	}
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha);
}

//Functions
function _press_button() {
	
	with(obj_char_select_player_lyle)	image_index = 0;
	with(obj_char_select_player_paige)	image_index = 0;
	with(obj_char_select_player_wyrm)	image_index = 0;
	switch(player_selected) {
		case 0:	{
			global.pl_character = players.lyle_brary;
			with(obj_char_select_player_lyle) image_index = 1;
			break;
		}
		case 1:	{
			global.pl_character = players.paige_turner;
			with(obj_char_select_player_paige) image_index = 1;
			break;
		}
		case 2:	{
			global.pl_character = players.buck_wyrm;
			with(obj_char_select_player_wyrm) image_index = 1;
			break;
		}
	}
}