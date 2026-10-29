///@desc Debug Commands

if(keyboard_check_pressed		(vk_escape))	game_end()				;	//End Game.
if(keyboard_check_pressed		(ord("Q")))		game_restart()			;	//Restart (Game).
if(keyboard_check_pressed		(ord("R")))		room_restart()			;	//Restart (Room).
if(keyboard_check_pressed		(vk_tab))		room_goto(rm_004_level)	;	//Skip Main Menu.
if(keyboard_check_pressed		(192	))		{							//Toggle Macro Suit Visible.
	var _lay_id		= layer_get_id		("Macro");
	var _lay_vis	= layer_get_visible	(_lay_id);
	layer_set_visible(_lay_id,!_lay_vis);
}
if(keyboard_check_pressed		(ord("T")))		{							//Spawn Textbox.
	if(!instance_exists(obj_textbox)) && (instance_exists(global.director)) {
		var _char_1 = global.director.char_get_name("lyle_brary");
		var _char_2 = global.director.char_get_name("miss_info");
		var _box = instance_create_layer(global.game_width-36,0,"Text",obj_textbox);
		_box.speakers[0] = _char_1;
		_box.speakers[1] = _char_2;
		_box.line_set(_char_1, "This is a test line to check typewriter speed, portraits, and wrapping.");
	}
}
if(keyboard_check_pressed		(ord("Y")))		{							//Spawn Cutscene.
	if(!instance_exists(obj_cutscene)) instance_create_layer(global.game_width-12,y,"Macro",obj_cutscene);
}