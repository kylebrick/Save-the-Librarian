///@desc Debug Commands

if(keyboard_check_pressed(vk_escape))	game_end()		;
if(keyboard_check_pressed(ord("Q")))	game_restart()	;
if(keyboard_check_pressed(ord("R")))	room_restart()	;
if(keyboard_check_pressed(192))	{
	var _lay_id		= layer_get_id		("Macro");
	var _lay_vis	= layer_get_visible	(_lay_id);
	layer_set_visible(_lay_id,!_lay_vis);
}