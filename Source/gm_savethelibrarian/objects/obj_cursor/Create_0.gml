///@desc Init

//Type
global.cursor		= self;
cursor_type			= 0; //0 - Cursor; 1 - Hand;

//Movement
x_pos				= xstart;
y_pos				= ystart;
x_to				= x_pos;
y_to				= y_pos;
move_spd			= 0.25;

//Animation
x_scale				= image_xscale; 
y_scale				= image_yscale;
x_scale_to			= x_scale;
y_scale_to			= y_scale;
scale_min			= 1;
scale_max			= 1.15;
scale_spd			= 0.05;
alpha				= image_alpha;
alpha_min			= 0.65;
alpha_max			= 1;
alpha_spd			= 0.15;

cursor_default_spr	= spr_ui_cursor;
cursor_puzzle_spr	= spr_ui_hand;

//Pickup
pickup_move_spd		= 0.1	;
pickup_scale_spd	= 0.25	;
pickup_hover_offset	= 1		;
pickup_hover_scale	= 1.05	;