///@desc scr_create_textbox(_char,_line)
function scr_create_textbox(_char,_line){
	if(!instance_exists(obj_textbox)) && (instance_exists(global.director)) {
		var _name = global.director.char_get_name("test");
		var _box = instance_create_layer(global.game_width-24,0,"Macro",obj_textbox);
		_box.line_set(_name,_line);
	}
}