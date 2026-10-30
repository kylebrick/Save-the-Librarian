/// @desc Init

//Graphics
#region

	//Box
	box_x					= global.game_width/2;
	box_y					= 104;
	box_w					= 164;
	box_h					= 38;
	box_spr					= spr_textbox_wood;
	box_spr_w				= sprite_get_width (box_spr);
	box_spr_h				= sprite_get_height(box_spr);
	box_alpha				= 0;
	box_alpha_spd			= 0.075;

	//Text
	txt_x_buff				= 6;
	txt_y_buff				= 4;
	txt_w_buff				= 8;
	txt_x					= box_x-(box_w/2)+txt_x_buff;
	txt_y					= box_y+txt_y_buff;
	txt_w					= box_w-txt_w_buff;
	txt_h					= string_height("M");
	txt_wrap				= "";
	txt_spd					= 1;

	//Portrait
	portr_x					= 2;
	portr_y					= 2;
	portr_scale_max			= 1.035;
	portr_scale_spd			= 0.1;
	portr_l_scale_x			= 1;
	portr_l_scale_y			= 1;
	portr_l_scale_to		= 1;
	portr_r_scale_x			= 1;
	portr_r_scale_y			= 1;
	portr_r_scale_to		= 1;

	//Backdrop
	backdrop_alpha			= 0;
	backdrop_alpha_max		= 0.25;

#endregion

//Speakers & Dialogue
#region

char					= undefined;
speakers				= [
	undefined,
	undefined
];
speakers_sep			= 48; //How far apart from textbox center to separate speakers

dialogue				= [];
dialogue_ind			= 0;
dialogue_line			= 0;

str_len					= 0;
counter					= 0;
pause					= false;
pause_time_comma		= 14;
pause_time_period		= 1;
pause_time_exclaim		= 24;
pause_time_question		= 1;
key_interact			= ord("Z");
global.pl_control_ov	= false;

#endregion

//Functions
#region

function _dialogue_line_add (_speaker,_txt	) {
	array_push(dialogue, {
		speaker	: _speaker,
		txt		: _txt
	});
}
function _dialogue_line_load(_line			) {
	if(_line >= array_length(dialogue)) return false;
	var _entry		= dialogue[_line];
	dialogue_line	= _line;
	char			= _entry.speaker;
	txt_wrap		= scr_string_wrap	(_entry.txt,txt_w);
	str_len			= string_length		(txt_wrap);
	counter			= 0;
	pause			= false;
	return true;
}

#endregion