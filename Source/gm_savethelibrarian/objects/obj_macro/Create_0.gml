/// @desc Global Vars

global.game_spd		= game_get_speed(gamespeed_fps);
global.game_width	= 256;
global.game_height	= 144;

global.font_main = font_add_sprite(fnt_main,32,true,1);
display_set_gui_size(global.game_width,global.game_height);
window_set_cursor(cr_none);

scr_macro_suite();
randomise();