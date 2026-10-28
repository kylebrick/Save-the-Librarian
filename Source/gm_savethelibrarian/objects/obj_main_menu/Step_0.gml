///@desc Move to Point

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
			if(!alarm[0]) {
				alarm[0] = global.game_spd*anim_open_delay;
			}
		}
		else image_speed = anim_open_spd;
		break;
	}
	case 3: { //Activate
		
			var _menu_1 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				_menu_1.depth			= depth-1;
				_menu_1.sprite_index	= spr_main_menu_title_save;
			var _menu_2 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				_menu_2.depth			= depth-2;
				_menu_2.sprite_index	= spr_main_menu_title_the;
			var _menu_3 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				_menu_3.depth			= depth-3;
				_menu_3.sprite_index	= spr_main_menu_title_librarian;
			var _menu_4 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				_menu_4.depth			= depth-4;
				_menu_4.sprite_index	= spr_main_menu_title_exclaim;
				
			var _del = 1;
			with(obj_main_menu_button_start)	alarm[0] = global.game_spd*_del;
			with(obj_main_menu_button_options)	alarm[0] = global.game_spd*_del;
			with(obj_main_menu_button_quit )	alarm[0] = global.game_spd*_del;
			
			state++;
		break;
	}
	case 4: { //Wait
		break;
	}
}