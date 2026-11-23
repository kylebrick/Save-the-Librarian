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
		
			//Save
			var _o			= 3;
			var _off		= 77;
			var _txt_sep	= 11;
			var _x_off		= 32-_o;
			var _y_off		= (sprite_get_height(spr_main_menu_title_letters)*1)-_off;
			var _save_s		= instance_create_layer(x-_x_off+(_txt_sep*1),y+_y_off,"UI",obj_main_menu_title); with(_save_s)	{image_index = 0; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.0));}
			var _save_a		= instance_create_layer(x-_x_off+(_txt_sep*2),y+_y_off,"UI",obj_main_menu_title); with(_save_a)	{image_index = 1; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.1));}
			var _save_v		= instance_create_layer(x-_x_off+(_txt_sep*3),y+_y_off,"UI",obj_main_menu_title); with(_save_v)	{image_index = 2; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.2));}
			var _save_e		= instance_create_layer(x-_x_off+(_txt_sep*4),y+_y_off,"UI",obj_main_menu_title); with(_save_e)	{image_index = 3; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.3));}
			
			//The
			_x_off			= 24-_o;
			_y_off			= ((sprite_get_height(spr_main_menu_title_letters)*2)-_off)-1;
			var _the_t		= instance_create_layer(x-_x_off+(_txt_sep*1),y+_y_off,"UI",obj_main_menu_title); with(_the_t)	{image_index = 4; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.4));}
			var _the_h		= instance_create_layer(x-_x_off+(_txt_sep*2),y+_y_off,"UI",obj_main_menu_title); with(_the_h)	{image_index = 5; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.5));}
			var _the_e		= instance_create_layer(x-_x_off+(_txt_sep*3),y+_y_off,"UI",obj_main_menu_title); with(_the_e)	{image_index = 6; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.6));}
			
			//Librarian
			_x_off			= 60-_o;
			_y_off			= ((sprite_get_height(spr_main_menu_title_letters)*3)-_off)-4;
			var _libr_l		= instance_create_layer(x-_x_off+(_txt_sep*1),y+_y_off,"UI",obj_main_menu_title); with(_libr_l)	{image_index = 7 ; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.7));}
			var _libr_i		= instance_create_layer(x-_x_off+(_txt_sep*2),y+_y_off,"UI",obj_main_menu_title); with(_libr_i)	{image_index = 8 ; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.8));}
			var _libr_b		= instance_create_layer(x-_x_off+(_txt_sep*3),y+_y_off,"UI",obj_main_menu_title); with(_libr_b)	{image_index = 9 ; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*1.9));}
			var _libr_r		= instance_create_layer(x-_x_off+(_txt_sep*4),y+_y_off,"UI",obj_main_menu_title); with(_libr_r)	{image_index = 10; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*2.0));}
			var _libr_a		= instance_create_layer(x-_x_off+(_txt_sep*5),y+_y_off,"UI",obj_main_menu_title); with(_libr_a)	{image_index = 11; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*2.1));}
			var _libr_r_	= instance_create_layer(x-_x_off+(_txt_sep*6),y+_y_off,"UI",obj_main_menu_title); with(_libr_r_){image_index = 12; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*2.2));}
			var _libr_i_	= instance_create_layer(x-_x_off+(_txt_sep*7),y+_y_off,"UI",obj_main_menu_title); with(_libr_i_){image_index = 13; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*2.3));}
			var _libr_a_	= instance_create_layer(x-_x_off+(_txt_sep*8),y+_y_off,"UI",obj_main_menu_title); with(_libr_a_){image_index = 14; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*2.4));}
			var _libr_n		= instance_create_layer(x-_x_off+(_txt_sep*9),y+_y_off,"UI",obj_main_menu_title); with(_libr_n)	{image_index = 15; alarm[0] = global.game_spd*(other.anim_float_delay+(sine_sep*2.5));}
			
			//Menu
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