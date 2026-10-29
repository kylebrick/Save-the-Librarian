/// @desc Init

//Cast Registry
#region

cast = {};

function char_register(_name,_font,_voice,_portrait) {
			cast[$ _name] = new character(_name,_font,_voice,_portrait);
	return	cast[$ _name];
}
function char_get_name(_name) {return cast[$ _name];}

//Ex: obj_npc_lucy -> create event -> global.director.char_get_name("lucy").inst = id;

//Cast List
char_register("test",		global.font_default,sfx_msg,spr_test_portrait				);
char_register("lyle_brary",	global.font_default,sfx_msg,spr_player_lyle_portr_idle		);
char_register("miss_info",	global.font_default,sfx_msg,spr_npc_miss_info_portr_idle	);

#endregion

//Positions
room_init_pos_x = 184;
room_init_pos_y = 184;