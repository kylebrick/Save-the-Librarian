///@desc Move to Point

switch(state) {
	case 0: { //Idle
		break;
	}
	case 1: { //Enter
		
		sprite_index = spr_main_menu_book_enter;
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
		sprite_index = spr_main_menu_book_open;
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
		
			var		 _menu_1 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				with(_menu_1) {
					depth			= other.depth-1											;
					sprite_index	= spr_main_menu_title_save								;
					alarm[0]		= global.game_spd*(other.anim_float_delay+(sine_sep*1))	;
				}
			var		 _menu_2 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				with(_menu_2) {
					depth			= other.depth-2											;
					sprite_index	= spr_main_menu_title_the								;
					alarm[0]		= global.game_spd*(other.anim_float_delay+(sine_sep*2))	;
				}
			var		 _menu_3 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				with(_menu_3) {
					depth			= other.depth-3											;
					sprite_index	= spr_main_menu_title_librarian							;
					alarm[0]		= global.game_spd*(other.anim_float_delay+(sine_sep*3))	;
				}
			var		 _menu_4 = instance_create_layer(x,y-16,"UI",obj_main_menu_title);
				with(_menu_4) {
					depth			= other.depth-4											;
					sprite_index	= spr_main_menu_title_exclaim							;
					alarm[0]		= global.game_spd*(other.anim_float_delay+(sine_sep*4))	;
				}
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