///@desc Move to Point

if(awake) {
	x = lerp(x,x_to,move_spd);
	y = lerp(y,y_to,move_spd);
	
	if(point_distance(x,y,x_to,y_to)<1) {
		with(obj_main_menu_button_start)	alarm[0] = global.game_spd*1  ;
		with(obj_main_menu_button_quit )	alarm[0] = global.game_spd*1.5;
		
		awake = false;
	}
}