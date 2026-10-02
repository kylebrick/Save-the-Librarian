///@desc Activate

if(awake) {
	x = lerp(x,x_to,move_spd);
	y = lerp(y,y_to,move_spd);
	
	if(place_meeting(x,y,obj_cursor)) {	y = ystart-hover_off;
		if(mouse_check_button_pressed(mb_left)) _press_button();
	}
	else								y = ystart;
}