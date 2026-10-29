/// @desc Init

//Box
#region

box_x					= global.game_width/2;
box_y					= 104;
box_w					= 164;
box_h					= 38;
box_spr					= spr_textbox;
box_spr_w				= sprite_get_width (box_spr);
box_spr_h				= sprite_get_height(box_spr);
box_alpha				= 0;
box_alpha_spd			= 0.075;

#endregion

//Text
#region

txt_x_buff				= 6;
txt_y_buff				= 4;
txt_w_buff				= 6;
txt_x					= box_x-(box_w/2)+txt_x_buff;
txt_y					= box_y+txt_y_buff;
txt_w					= box_w-txt_w_buff;
txt_h					= string_height("M");
txt_wrap				= "";
txt_spd					= 1;
str_len					= 0;

#endregion

//Portrait
#region

portr_x					= 2;
portr_y					= 2;

#endregion

//Speakers
#region

char					= undefined;
speakers				= [
	undefined,
	undefined
];
speakers_sep			= 48; //How far apart from textbox center to separate speakers

#endregion

//Backdrop
#region

backdrop_alpha			= 0;
backdrop_alpha_max		= 0.25;

#endregion

//Misc.
#region

counter					= 0;
pause					= false;
pause_time_comma		= 14;
pause_time_period		= 0;
pause_time_exclaim		= 24;
pause_time_question		= 0;

key_interact			= ord("Z");
function line_set(_char,_txt) {
	char		= _char;
	txt_wrap	= scr_string_wrap(_txt,txt_w);
	str_len		= string_length(txt_wrap);
	counter		= 0;
}

global.pl_control_ov = false;

#endregion