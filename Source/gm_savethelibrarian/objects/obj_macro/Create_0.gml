///@desc Global Vars
///Oversees the entire macro suite.
///Contains reference list of objects. Check here if errors are thrown.

global.grid				= obj_grid		;
global.debug			= obj_debug		;
global.camera			= obj_camera	;
global.maestro			= obj_maestro	;
global.textbox			= obj_textbox	;
global.director			= obj_director	;
global.resolution		= obj_resolution;

global.game_width		= 256;
global.game_height		= 144;
global.grid_size		= 16;
global.game_spd			= game_get_speed(gamespeed_fps);

global.pl_control_ov	= true;
global.pl_control_ui	= true;

global.font_main		= font_add_sprite(fnt_main,32,true,1);
display_set_gui_size(global.game_width,global.game_height);
window_set_cursor(cr_none);

scr_macro_suite();
randomise();

//Move to Next Room if Available
if(room == rm_000_startup) room_goto_next();