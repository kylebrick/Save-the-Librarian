/// @desc Init

//Box
#region

box_x					= 0;
box_y					= 0;
box_w					= 120;
box_h					= 40;
box_spr					= spr_textbox;
box_spr_w				= sprite_get_width (box_spr);
box_spr_h				= sprite_get_height(box_spr);
box_alpha				= 0;
box_alpha_spd			= 0.144;

#endregion

//Text
#region

x_buff					= 8;
y_buff					= 4;
txt_x					= box_x+x_buff;
txt_y					= box_y+y_buff;
txt_w					= box_w-x_buff-4;
txt_h					= string_height("M");
txt_wrap				= "";
txt_spd					= 1;
str_len					= 0;

#endregion

//Character
#region

char					= undefined;
	//font
	//voice
	//portr

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
	
#endregion