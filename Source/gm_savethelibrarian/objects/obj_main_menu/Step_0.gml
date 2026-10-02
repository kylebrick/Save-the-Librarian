///@desc Move to Point

show_debug_message(state);
switch(state) {
	case 0: { //Idle
		break;
	}
	case 1: { //Enter
		
		sprite_index = spr_main_menu_enter;
		if(image_index >= image_number-1) {
			image_index = image_number-1; image_speed = 0;
			if(!alarm[0]) {
				scr_screen_shake(3,3);
				alarm[0] = global.game_spd*anim_open_delay;
			}
		}
		else image_speed = anim_enter_spd;
		break;	
	}
	case 2: { //Open
		sprite_index = spr_main_menu_open;
		if(image_index >= image_number-1) {
			image_index = image_number-1; image_speed = 0;
			if(!alarm[0]) alarm[0] = global.game_spd*anim_open_delay;
		}
		else image_speed = anim_open_spd;
		break;
	}
	case 3: { //Activate
			with(obj_main_menu_button_start)	alarm[0] = global.game_spd*0.25;
			with(obj_main_menu_button_options)	alarm[0] = global.game_spd*0.40;
			with(obj_main_menu_button_quit )	alarm[0] = global.game_spd*0.65;	

			var _menu = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				_menu.depth = depth-1;
			
			state++;
		break;
	}
	case 4: { //Wait
		break;
	}
}

/*
if(awake) {
	x = lerp(x,x_to,move_spd);
	y = lerp(y,y_to,move_spd);
	
	if(point_distance(x,y,x_to,y_to)<1) {
		with(obj_main_menu_button_start)	alarm[0] = global.game_spd*1  ;
		with(obj_main_menu_button_quit )	alarm[0] = global.game_spd*1.5;
		
		awake = false;
	}
}