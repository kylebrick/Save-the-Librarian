///@desc Transition

switch(state) {
	case 0: {//Init
		state++;
		break;
	}
	case 1: {//Fade In
		if		(fade < 1 )	fade += fade_in_spd;
		else if	(fade >= 1)	state++;
		break;
	}
	case 2: {//Transition & Execute
		//Capture room before transition
		if(!once) {once = true;
			room_cur = room;
		}
		//Transition to target room, or next room if target is empty
		if(room_to != -1)	room_goto(room_to);
		else				room_goto_next();
		
		//Detect if in next room -> increment state
		if(room_cur != room) state++;
		break;
	}
	case 3: {//Fade Out
		
		if		(fade > 0 )	fade -= fade_out_spd;
		else if	(fade <= 0)	state++;
		break;
	}
	case 4: {//Destroy
		scr_debug_msg("transition end");
		instance_destroy();
		break;
	}
}

scr_debug_msg("fade",fade);