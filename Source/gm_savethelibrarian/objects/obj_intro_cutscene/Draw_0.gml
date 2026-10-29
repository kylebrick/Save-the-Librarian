///@desc Cutscene

switch(state) {
	case 0:		{					break;}
	case 1:		{ //Wait
		
		state++;
		
		break;
	}
	case 2:		{ //Fade -> 01 -		No Text
		
		draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,1,scene_fade_spd);
		if(scene_fade_alpha >= 1) alarm_state_inc();
		
		break;
	}
	case 3:		{ //Fade -> 01 -		w/ Text
		
		draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
				
		break;
	}
	case 4:		{ //Fade -> 01 -> 02 -	No Text

		draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,1,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
			
		break;
	}
	case 5:		{ //Fade -> 02 -		w/ Text

		draw_sprite_ext(sprite_index,3,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,2,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();

		break;
	}
	case 6:		{ //Fade -> 02 -> 03 -	No Text

		draw_sprite_ext(sprite_index,4,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,3,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
			
		break;
	}
	case 7:		{ //Fade -> 03 -		w/ Text

		draw_sprite_ext(sprite_index,5,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,4,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
			
		break;
	}
	case 8:		{ //Fade -> 03 -> 04 -	No Text

		draw_sprite_ext(sprite_index,6,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,5,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
			
		break;
	}
	case 9:		{ //Fade -> 04 -		w/ Text

		draw_sprite_ext(sprite_index,7,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,6,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
			
		break;
	}
	case 10:	{ //Fade to Black

		draw_sprite_ext(sprite_index,7,x,y,1,1,0,c_white,scene_fade_alpha);
		
		scene_fade_alpha = lerp(scene_fade_alpha,0,scene_fade_spd);
		if(scene_fade_alpha <= 0) alarm_state_inc();
			
		break;
	}
	case 11:	{ //Next Room
		
		room_goto_next();
		
		break;
	}
	default:	{					break;}
}

//Functions
function alarm_state_inc() {
	if(!alarm[1]) alarm[1] = global.game_spd*scene_delay_timers[state];
}

scr_debug_msg("state",state);