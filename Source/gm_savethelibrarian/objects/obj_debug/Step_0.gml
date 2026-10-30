///@desc Debug Commands

if(keyboard_check_pressed		(vk_escape))	game_end()						;	//End Game.
if(keyboard_check_pressed		(ord("Q")))		game_restart()					;	//Restart (Game).
if(keyboard_check_pressed		(ord("R")))		room_restart()					;	//Restart (Room).
if(keyboard_check_pressed		(vk_tab))		room_goto(rm_003_char_select)	;	//Skip Main Menu.
if(keyboard_check_pressed		(192	))		{									//Toggle Macro Suit Visible.
	var _lay_id		= layer_get_id		("Macro");
	var _lay_vis	= layer_get_visible	(_lay_id);
	layer_set_visible(_lay_id,!_lay_vis);
}
if(keyboard_check_pressed		(ord("T")))		{									//Spawn Textbox.
		var _lyle		= global.director.char_get_name("lyle_brary")	;
		var _ms_info	= global.director.char_get_name("miss_info" )	;
		scr_create_textbox(_lyle,_ms_info,
			[
				[_ms_info,"Hee hee. So, I guess the textbox is working after all, eh?"],
				[_lyle,"This madness has to end, Miss Information!"],
				[_ms_info,"I agree. Let's see what you're made of, kid."],
			]
		);
}
if(keyboard_check_pressed		(ord("Y")))		{									//Spawn Cutscene.
	if(!instance_exists(obj_cutscene)) instance_create_layer(global.game_width-12,y,"Macro",obj_cutscene);
}