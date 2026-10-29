///@desc Init

state				= 0;
move_spd			= 0.08;

anim_enter_spr		= spr_main_menu_book_open;
anim_enter_spd		= 0.75;
anim_enter_delay	= 0.5;

anim_open_spr		= spr_main_menu_book_open;
anim_open_spd		= 0.5;
anim_open_delay		= 0.5;

anim_float_delay	= 0.01;

image_index			= 0;
image_speed			= 0;
alarm[0]			= global.game_spd*anim_enter_delay;