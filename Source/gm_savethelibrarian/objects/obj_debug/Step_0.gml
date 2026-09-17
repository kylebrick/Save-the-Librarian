///@desc Debug Commands

if(keyboard_check_pressed(vk_escape))	game_end()		;
if(keyboard_check_pressed(ord("Q")))	game_restart()	;
if(keyboard_check_pressed(ord("R")))	room_restart()	;
if(keyboard_check_pressed(192))	{
	var _lay_id		= layer_get_id		("Macro");
	var _lay_vis	= layer_get_visible	(_lay_id);
	layer_set_visible(_lay_id,!_lay_vis);
}
if(keyboard_check_pressed(ord("T"))) {
	if(!instance_exists(obj_textbox)) {
		var _char = global.director.char_get_name("test");
		var _box = instance_create_layer(room_width-36,y,"Macro",obj_textbox);
		_box.line_set(_char, "This is a test line to check typewriter speed, portraits, and wrapping.");
	}
}