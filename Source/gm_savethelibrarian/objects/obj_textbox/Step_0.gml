/// @desc Type & Update Text

if(char == undefined) exit;

if(!pause) && (counter < str_len) {
	counter += txt_spd;
	if((counter mod 4) == 0) audio_play_sound(char.voice,10,false);
	switch(string_char_at(txt_wrap,counter)) {
		case ",": pause = true; alarm[0] = pause_time_comma;	break;
		case ".": pause = true; alarm[0] = pause_time_period;	break;
		case "!": pause = true; alarm[0] = pause_time_exclaim;	break;
		case "?": pause = true; alarm[0] = pause_time_question;	break;
	}
}

if	(keyboard_check_pressed(key_interact)		||
	(gamepad_button_check_pressed(0,gp_face1))	||
	(mouse_check_button_pressed(mb_left))) {
		if(counter < str_len)	counter = str_len;	//Skip to end of line.
		else					instance_destroy();	//Reads line -> sends back to obj_cutscene queue.
}