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
//char_register("lucy",fnt_lucy,sfx_voice_lucy,spr_portr_lucy);
//char_register("four arms",fnt_fourarms,sfx_voice_fourarms,spr_portr_fourarms);

#endregion

char_register("test",global.font_main,sfx_msg,spr_test_portrait);