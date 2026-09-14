/// @desc Flip Through Pages

if(keyboard_check_pressed(key_interact)) || (gamepad_button_check_pressed(0,gp_face1)) || (mouse_check_button_pressed(mb_left))
{
	if(!choice_dialogue) && (counter < str_len) {counter = str_len;}
	else if(page < array_length(text) - 1)
	{
		event_perform(ev_other,ev_user2);
		
		var line = next_line[page];
		if(choice_dialogue) {line = line[choice];} //if choice dialogue - go to line
		
		if(line == 0) {page++;}
		else if (line == -1) 
		{
			//with(par_player) {alarm[0] = 4};
			instance_destroy(); exit;
		}
		else {page = line;}
		
		event_perform(ev_other,ev_user1);
	}	
	else
	{
		if(instance_exists(obj_cutscene)) //continue cutscene if it exists
		{
			with(obj_cutscene) {scr_cutscene_end_action();}
		}
		else
		//{with(par_player) {alarm[0] = 4};} //return player control
		instance_destroy();	
	}
}

if(choice_dialogue)
{
	choice += gamepad_button_check_pressed(0,gp_padd) - gamepad_button_check_pressed(0,gp_padu);
	choice += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if(choice > text_array_len-1) {choice = 0;}
	if(choice < 0) {choice = text_array_len-1;}
}